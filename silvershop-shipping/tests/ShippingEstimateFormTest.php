<?php

class ShippingEstimateFormTest extends FunctionalTest{

    static $fixture_file = array(
        "silvershop-shipping/tests/fixtures/TableShippingMethod.yml",
        "silvershop/tests/fixtures/shop.yml",
        "silvershop/tests/fixtures/Pages.yml"
    );
    protected static $use_draft_site = true;

    function setUp() {
        if(method_exists('SapphireTest', 'useTestTheme')){
            $this->useTestTheme($themeBaseDir = dirname(__FILE__), 'testtheme', function(){});
        } else {
            $this->useTheme('testtheme');
        }
        parent::setUp();
        ShopTest::setConfiguration();
        // add product to the cart
        $this->socks = $this->objFromFixture('Product', 'socks');
        $this->socks->publish('Stage','Live');

        $this->cartpage = $this->objFromFixture("CartPage", "cart");
        $this->cartpage->publish('Stage','Live');
        ShoppingCart::singleton()->setCurrent($this->objFromFixture("Order", "cart")); //set the current cart

        // Open cart page
        $page = $this->get('/cart');
    }

    function testGetEstimates() {

        //good data for Shipping Estimate Form
        $data = array(
            'Country' => 'NZ',
            'State' => 'Auckland',
            'City' => 'Auckland',
            'PostalCode' => 1010
        );
        $page1 = $this->post('/cart/ShippingEstimateForm', $data);
        $this->assertEquals(200, $page1->getStatusCode(), "a page should load");
        $this->assertContains("Quantity-based shipping", $page1->getBody(), "ShippingEstimates presented in a table");


        //un-escaped data for Shipping Estimate Form
        $data = array(
            'Country' => 'NZ',
            'State' => 'Hawke\'s Bay',
            'City' => 'SELECT * FROM \" \' WHERE AND EVIL',
            'PostalCode' => 1234
        );
        $page2 = $this->post('/cart/ShippingEstimateForm', $data);
        $this->assertEquals(200, $page2->getStatusCode(), "a page should load");
        $this->assertContains("Quantity-based shipping", $page2->getBody(), "ShippingEstimates can be successfully presented with un-escaped data in the form");

    }

    function testShippingEstimateWithReadonlyFieldForCountry() {
        // setup a single-country site
        $siteconfig = DataObject::get_one('SiteConfig');
        $siteconfig->AllowedCountries = "NZ";
        $siteconfig->write();

        // Open cart page where Country field is readonly
        $page = $this->get('/cart');
        $this->assertContains("Country_readonly", $page->getBody(), "The Country field is readonly");
        $this->assertNotContains("<option value=\"NZ\">New Zealand</option>", $page->getBody(), "Dropdown field is not shown");

        // The Shipping Estimate Form can post with a Country readonly field
        $data = array(
            'State' => 'Waikato',
            'City' => 'Hamilton',
            'PostalCode' => 3210
        );
        $page3 = $this->post('/cart/ShippingEstimateForm', $data);
        $this->assertEquals(200, $page3->getStatusCode(), "a page should load");
        $this->assertContains("Quantity-based shipping", $page3->getBody(), "ShippingEstimates can be successfully presented with a Country readonly field");


    }


    /**
    * Test against a SS Shop Shipping theme
    *
    * Template CartPage.ss contains <% include ShippingEstimator %>
    * Function adapted from SSViewerTest.php in SSv3.1
    * @param $theme string - theme name
    */
    protected function useTheme($theme) {
        global $project;

        $themeBaseDir = dirname(__FILE__);
        $manifest = new SS_TemplateManifest($themeBaseDir, $project, true, true);

        SS_TemplateLoader::instance()->pushManifest($manifest);

        $origTheme = Config::inst()->get('SSViewer', 'theme');
        Config::inst()->update('SSViewer', 'theme', $theme);

        // Remove all the test themes we created
        SS_TemplateLoader::instance()->popManifest();
        Config::inst()->update('SSViewer', 'theme', $origTheme);
    }

}
