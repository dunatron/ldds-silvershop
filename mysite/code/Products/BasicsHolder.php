<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 21/07/16
 * Time: 12:10 AM
 */
class BasicsHolder extends Page
{
    private static $icon = 'mysite/images/cms/icons/folders-icon.jpeg';
    
    private static $allowed_children = array(
        'CollectionCategory'
    );

}
class BasicsHolder_Controller extends Page_Controller
{

}