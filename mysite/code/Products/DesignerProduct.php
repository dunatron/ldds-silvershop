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

    private static $has_one = array(
        'SizeChart' => 'Image'
    );

    private static $has_many = array(
        'DesignerImageSet' => 'DesignerShoot'
    );


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $conf= GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));

        $fields->addFieldToTab('Root.DesignerShoot', new GridField('DesignerImageSet', 'DesignerImageSet', $this->DesignerImageSet(), $conf));


//        $fields->addFieldToTab('Root.CollectionShoot', $designerImageSet = new UploadField('DesignerImageSet', 'Designer product Image Set'));
        $fields->addFieldToTab('Root.SizeChart', $sizeChart = new UploadField('SizeChart', 'Size Chart Image'));
//
//        $designerImageSet->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
//        $designerImageSet->setFolderName('designer-images');

        $sizeChart->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
        $sizeChart->setFolderName('Size-Charts');

        return $fields;
    }

    public function TestDiscounts()
    {
        $discounts = OrderDiscount::get();

        foreach ($discounts as $d) {
            $item = $d->OrderItems();
            error_log(var_export($item, true));


            // foreach ($item as $i) {
            //     error_log(var_export($i, true));
            //}
        }

        //error_log(var_export($discounts, true));

        return $discounts;
    }

    public function TheTestPrice()
    {
        return 500;
    }

    public function SalePrice($originalPrice, $amountOff)
    {
        
        error_log(var_export('Here item ==============================', true));
        error_log(var_export('$originalPrice'.$originalPrice, true));
        error_log(var_export('$amountOff'.$amountOff, true));
        $origPrice = floatval(ltrim($originalPrice, '$'));
        error_log(var_export('$origPrice'.$origPrice, true));

        $origPrice -= $amountOff;
        
        error_log(var_export('after calc', true));

        error_log(var_export('$origPrice'.$origPrice, true));

        return $origPrice;
    }

}

class DesignerProduct_Controller extends Product_Controller {


}
