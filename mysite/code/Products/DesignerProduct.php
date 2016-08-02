<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 20/07/16
 * Time: 5:31 PM
 */
class DesignerProduct extends Product {

    private static $singular_name          = "Designer Product";

    private static $plural_name            = "Designer Products";

    private static $icon                   = 'mysite/images/cms/icons/expensive-clothe-icon.png';

    private static $default_parent         = 'ProductCategory';

    private static $default_sort           = '"Title" ASC';

    private static $global_allow_purchase  = true;

    private static $allow_zero_price       = false;

    private static $order_item             = "Product_OrderItem";

    private static $min_opengraph_img_size = 0;

}

class DesignerProduct_Controller extends Product_Controller {

}