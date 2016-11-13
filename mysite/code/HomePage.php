<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 1/08/16
 * Time: 10:01 PM
 */
class HomePage extends Page
{

    private static $db = array(
        'PrintPanelTitle' => 'Text',
        'RangesPanelTitle' => 'Text',
        'BasicsPanelTitle' => 'Text'
    );
    private static $has_many = array();

    private static $has_one = array(
        'PrintImage' => 'Image',
        'RangesImage' => 'Image',
        'BasicsImage' => 'Image'
    );

    private static $allowed_children = array(
    );

    //Getting CMS Fields For our Home slides DataObject
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        // Panel Titles
        $fields->addFieldToTab('Root.PrintPanel', TextField::create('PrintPanelTitle', 'Title of Print Panel'));
        $fields->addFieldToTab('Root.RangesPanel', TextField::create('RangesPanelTitle', 'Title of Ranges Panel'));
        $fields->addFieldToTab('Root.BasicsPanel', TextField::create('BasicsPanelTitle', 'Title of Basics Panel'));
        // Panel Images
        $fields->addFieldToTab('Root.PrintPanel', $artImage = new UploadField('PrintImage', 'Prints Panel Background Image'));
        $fields->addFieldToTab('Root.RangesPanel', $designerImage = new UploadField('RangesImage', 'Ranges Panel Background Image'));
        $fields->addFieldToTab('Root.BasicsPanel', $ldImage = new UploadField('BasicsImage', 'Basics Panel Background Image'));
        // Validate & set Upload Path
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
        // GREEN SOCK ANIMATIONS
        Requirements::javascript('https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.2/TweenLite.min.js');
        Requirements::javascript('https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.2/plugins/CSSPlugin.min.js');
        Requirements::javascript('https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/easing/EasePack.min.js');
        Requirements::javascript('https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TimelineLite.min.js');
        Requirements::javascript($this->ThemeDir() . '/js/main.js');

    }

}