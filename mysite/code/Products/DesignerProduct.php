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

}

class DesignerProduct_Controller extends Product_Controller {


}
