<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 1/08/16
 * Time: 10:01 PM
 */
class HomePage extends Page
{

    private static $db = array();
    private static $has_many = array();

    private static $has_one = array(
        'ArtImage' => 'Image',
        'DesignerImage' => 'Image',
        'LDImage' => 'Image'
    );

    private static $allowed_children = array(
    );

    //Getting CMS Fields For our Home slides DataObject
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.ArtImage', $artImage = new UploadField('ArtImage', 'Art Background Image'));
        $fields->addFieldToTab('Root.DesignerImage', $designerImage = new UploadField('DesignerImage', 'Designer Background Image'));
        $fields->addFieldToTab('Root.LDImage', $ldImage = new UploadField('LDImage', 'LD Background Image'));

        $artImage->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
        $artImage->setFolderName('Panel-Images');
        $designerImage->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
        $designerImage->setFolderName('Panel-Images');
        $ldImage->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
        $ldImage->setFolderName('Panel-Images');

        return $fields;
    }

}

class HomePage_Controller extends Page_Controller
{
    public function init()
    {
        //Pull in parent properties for controller e.g css & js assets
        parent::init();
        Requirements::css($this->ThemeDir().'/css/homepage.css');
        Requirements::set_force_js_to_bottom(true);
        Requirements::javascript($this->ThemeDir() . '/js/jquery.mobile.custom.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/tron-swipe.js');
    }

}