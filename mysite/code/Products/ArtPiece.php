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
        'Description' => 'Text'
    );

    private static $has_one = array(
        'ArtHolder' => 'ArtHolder'
    );

}