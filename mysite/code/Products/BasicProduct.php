<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 20/07/16
 * Time: 6:04 PM
 */
class BasicProduct extends Product {

    private static $singular_name          = "Cheaper Product";

    private static $plural_name            = "Cheaper Products";

    private static $icon                   = 'mysite/images/cms/icons/cheap-clothe-icon.png';

    private static $default_parent         = 'ProductCategory';

    private static $default_sort           = '"Title" ASC';

    private static $global_allow_purchase  = true;

    private static $allow_zero_price       = false;

    private static $order_item             = "Product_OrderItem";

    private static $min_opengraph_img_size = 0;

    private static $can_be_root = false;

    static $defaults = array (
        'ShowInMenus' => true,
        'ShowInSearch' => true
    );

    private static $has_one = array(
        'SizeChart' => 'Image'
    );

    private static $has_many = array(
        'BasicImageSet' => 'BasicShoot'
    );


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $conf= GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));

        $fields->addFieldToTab('Root.CollectionShoot', new GridField('BasicImageSet', 'BasicImageSet', $this->BasicImageSet(), $conf));

        $fields->addFieldToTab('Root.SizeChart', $sizeChart = new UploadField('SizeChart', 'Size Chart Image'));

        $sizeChart->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
        $sizeChart->setFolderName('Size-Charts');

        return $fields;
    }

}

class BasicProduct_Controller extends Product_Controller {

}