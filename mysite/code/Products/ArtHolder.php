<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 2/08/16
 * Time: 12:14 AM
 */
class ArtHolder extends Page
{
    private static $icon = 'mysite/images/cms/icons/folders-icon.jpeg';

    private static $has_many = array(
        'ArtPieces' => 'ArtPiece'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Art', GridField::create(
            'ArtPieces',
            'Art Pieces for the Art Panel Lucius =)',
            $this->ArtPieces(),
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }
}

class ArtHolder_Controller extends Page_Controller
{

}