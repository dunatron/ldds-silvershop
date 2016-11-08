<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 20/07/16
 * Time: 6:04 PM
 */
class LDProduct extends Product {

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

}

class LDProduct_Controller extends Product_Controller {

}