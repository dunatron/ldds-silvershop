<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 4/08/16
 * Time: 10:19 PM
 */
class CollectionCategory extends ProductCategory
{
    private static $singular_name        = "Collection Category";

    private static $plural_name          = "Collection Categories";

    private static $icon = 'mysite/images/cms/icons/loonie_toons_folder_24.png';

    private static $has_many = array(
        'CollectionShoot' => 'CategoryShoot'
    );

    private static $db = array(
        'CollectionType' => "Enum('Designer, Basic', 'Designer')"
    );

    private static $allowed_children = array(
        'BasicProduct',
        'DesignerProduct'
    );

    //Getting CMS Fields For our Home slides DataObject
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $conf= GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));

        $fields->addFieldToTab('Root.CollectionShoot', new GridField('CollectionShoot', 'CollectionShoot', $this->CollectionShoot(), $conf));

        $fields->addFieldToTab('Root.Main', new DropdownField('CollectionType', 'Collection Type',
            $this->dbobject('CollectionType')->enumValues()), 'URLSegment');

//        $fields->addFieldToTab('Root.CollectionShoot', $collectionImage = new UploadField('CollectionShoot', 'Collection Shoot Image'));
//        $collectionImage->getValidator()->setAllowedExtensions(array('png', 'gif', 'jpg', 'jpeg'));
//        $collectionImage->setFolderName('Collection');

        return $fields;
    }

}

class CollectionCategory_Controller extends ProductCategory_Controller
{

    private static $allowed_actions = array (
    );

    public function init() {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements
    }

}