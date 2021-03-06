<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 8/08/16
 * Time: 7:19 PM
 */
class ArtPiece extends DataObject
{

    private static $db = array(
        'Title' => 'Varchar(100)',
        'Description' => 'Text',
        'SortOrder' => 'Int'
    );

    private static $has_one = array(
        'ArtHolder' => 'ArtHolder',
        'ArtImage' => 'Image'
    );

    private static $default_sort='SortOrder';

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        return $fields;
    }

    /**
     * Summary Fields For A Panel
     */
    private static $summary_fields = array(
        'GridThumbnail' => '',
        'Title' => 'Title of art piece',
        'Description' => 'description of art piece',
    );
    public function getGridThumbnail()
    {
        if ($this->ArtImage()->exists()) {
            return $this->ArtImage()->SetWidth(100);
        }
        return '(no image)';
    }

}