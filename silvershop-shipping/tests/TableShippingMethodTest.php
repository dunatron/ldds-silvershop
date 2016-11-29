<?php

class TableShippingMethodTest extends SapphireTest{
    
    static $fixture_file = array(
        'silvershop-shipping/tests/fixtures/TableShippingMethod.yml'
    );

    protected $fixtureclass = "TableShippingMethod";
    
    public function setUp(){
        parent::setUp();
        $this->addressshipping = $this->objFromFixture($this->fixtureclass, "address");
        $this->weightshipping = $this->objFromFixture($this->fixtureclass, "weight");
        $this->volumeshipping = $this->objFromFixture($this->fixtureclass, "volume");
        $this->valueshipping = $this->objFromFixture($this->fixtureclass, "value");
        $this->quantityshipping = $this->objFromFixture($this->fixtureclass, "quantity");

        $this->nzaddress = new Address(array(
            "Country" =>    "NZ",
            "State" =>      "Wellington",
            "PostalCode" => "6022"
        ));

        $this->internationaladdress = new Address(array(
            "Company" => 'Nildram Ltd',
            "Address" => 'Ardenham Court',
            "Address2" =>    'Oxford Road',
            "City" => 'AYLESBURY',
            "State" => 'BUCKINGHAMSHIRE',
            "PostalCode" => 'HP19 3EQ',
            "Country" => 'UK'
        ));     

        //create some package fixtures
        $this->p0 = new ShippingPackage();
        $this->p1 = new ShippingPackage(2.34, array(0.5,1,2), array('value' => 2, 'quantity' => 3));
        $this->p2 = new ShippingPackage(17, array(1,2,3), array('value' => 6, 'quantity' => 10));
        $this->p3 = new ShippingPackage(100, array(12.33,51,30.1), array('value' => 1000, 'quantity' => 55));
        $this->p4 = new ShippingPackage(1000, array(100,200,300), array('value' => 1000000, 'quantity' => 12412));
    }
    
    public function testAddressTable() {
        $type = "address";

        $address = new Address(array(
            'Country' => 'NZ',
            'State' => 'Wellington'
        ));
        $this->assertMatch($type, $this->p0, $address, 30);
        $this->assertMatch($type, $this->p2, $address, 30);
        $this->assertMatch($type, $this->p4, $address, 30);

        $address = new Address(array(
            'Country' => 'NZ',
            'PostalCode' => '6000'
        ));
        $this->assertMatch($type, $this->p0, $address, 45);
        $this->assertMatch($type, $this->p2, $address, 45);
        $this->assertMatch($type, $this->p4, $address, 45); 

        //empty package rate
        $address = $this->internationaladdress;

        $this->assertMatch($type, $this->p0, $address, 0);
        $this->assertMatch($type, $this->p2, $address, 0);
        $this->assertMatch($type, $this->p4, $address, 0);
    }

    public function testDefaultRate() {
        $type = "address";
        $address = $this->internationaladdress;
        $defaultrate = new TableShippingRate(array(
            "Rate" => 100
        ));
        $defaultrate->write();
        $this->addressshipping->Rates()->add($defaultrate);

        $this->assertMatch($type, $this->p0, $address, 100);
        $this->assertMatch($type, $this->p2, $address, 100);
        $this->assertMatch($type, $this->p4, $address, 100);
    }

    public function testInternationalRates(){
        $address_int = $this->internationaladdress;

        //weight based
        $type = "weight";
        $this->assertMatch($type, $this->p0, $address_int, 8); //weight = 0kg
        $this->assertMatch($type, $this->p1, $address_int, 8); //weight = 2.34kg
        $this->assertMatch($type, $this->p2, $address_int, 96); //weight= 17kg, 
        $this->assertMatch($type, $this->p3, $address_int, 116); //weight = 100kg
        $this->assertNoMatch($type, $this->p4, $address_int);  //weight = 1000kg

        //volume based
        $type = "volume";
        $this->assertMatch($type, $this->p0, $address_int, 2); //volume = 0cm3
        $this->assertMatch($type, $this->p1, $address_int, 2); //volume = 1cm3
        $this->assertMatch($type, $this->p2, $address_int, 6); //volume = 6cm3
        $this->assertMatch($type, $this->p3, $address_int, 520); //volume = 18927.783cm3
        $this->assertNoMatch($type, $this->p4, $address_int); //volume = 2000000cm3

        //value based
        $type = "value";
        $this->assertMatch($type, $this->p0, $address_int, 2); //value = $0
        $this->assertMatch($type, $this->p1, $address_int, 2); //value = $2
        $this->assertMatch($type, $this->p2, $address_int, 6); //value = $6
        $this->assertNoMatch($type, $this->p3, $address_int); //value = $1000
        $this->assertNoMatch($type, $this->p4, $address_int); //value = $1,000,000
        
        //quantity based
        $type = "quantity";
        $this->assertNoMatch($type, $this->p0, $address_int); //quantity = 0
        $this->assertMatch($type, $this->p1, $address_int, 11); //quantity = 3
        $this->assertMatch($type, $this->p2, $address_int, 18.6); //quantity = 10
        $this->assertNoMatch($type, $this->p3, $address_int); //quantity = 155
        $this->assertNoMatch($type, $this->p4, $address_int); //quantity = 12412
    }
    
    public function testLocalRates(){
        $address_loc = $this->nzaddress;
        
        //weight based
        $type = "weight";
        $this->assertMatch($type, $this->p0, $address_loc, 4); //weight = 0kg
        $this->assertMatch($type, $this->p1, $address_loc, 4); //weight = 2.34kg
        $this->assertMatch($type, $this->p2, $address_loc, 48); //weight= 17kg,
        $this->assertMatch($type, $this->p3, $address_loc, 58); //weight = 100kg
        $this->assertNoMatch($type, $this->p4, $address_loc);  //weight = 1000kg
        
        //volume based
        $type = "volume";
        $this->assertMatch($type, $this->p0, $address_loc, 1); //volume = 0cm3
        $this->assertMatch($type, $this->p1, $address_loc, 1); //volume = 1cm3
        $this->assertMatch($type, $this->p2, $address_loc, 3); //volume = 6cm3
        $this->assertMatch($type, $this->p3, $address_loc, 520); //volume = 18927.783cm3
        $this->assertNoMatch($type, $this->p4, $address_loc); //volume = 2000000cm3
        
        //value based
        $type = "value";
        $this->assertMatch($type, $this->p0, $address_loc, 1); //value = $0
        $this->assertMatch($type, $this->p1, $address_loc, 1); //value = $2
        $this->assertMatch($type, $this->p2, $address_loc, 3); //value = $6
        $this->assertNoMatch($type, $this->p3, $address_loc); //value = $1000
        $this->assertNoMatch($type, $this->p4, $address_loc); //value = $1,000,000
        
        //quantity based
        $type = "quantity";
        $this->assertNoMatch($type, $this->p0, $address_loc); //quantity = 0
        $this->assertMatch($type, $this->p1, $address_loc, 5.5); //quantity = 3
        $this->assertMatch($type, $this->p2, $address_loc, 9.3); //quantity = 10
        $this->assertNoMatch($type, $this->p3, $address_loc); //quantity = 155
        $this->assertNoMatch($type, $this->p4, $address_loc); //quantity = 12412
        
    }
    
    protected function assertMatch($type = "weight", $package, $address, $amount){
        $rate = $this->{$type."shipping"}->calculateRate($package, $address);
        $this->assertEquals($amount, $rate, "Check rate for package $package is $amount");
    }
    
    protected function assertNoMatch($type = "weight", $package, $address){
        $rate = $this->{$type."shipping"}->calculateRate($package,$address);
        $this->assertNull($rate,"Check rate for package $package is not found");
    }
    
}