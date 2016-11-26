<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 27/11/16
 * Time: 10:10 AM
 */
class BasicShoot extends DataObject
{
    private static $db = array(
        'Title' => 'Varchar(100)',
        'SortOrder' => 'Int'
    );

    private static $has_one = array(
        'Parent' => 'BasicProduct',
        'ShootImage' => 'Image'
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
        'Title' => 'Title of shoot image',
    );
    public function getGridThumbnail()
    {
        if ($this->ShootImage()->exists()) {
            return $this->ShootImage()->SetWidth(100);
        }
        return '(no image)';
    }
}