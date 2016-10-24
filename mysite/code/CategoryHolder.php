<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 24/10/16
 * Time: 11:41 AM
 */
class CategoryHolder extends Page
{

}

class CategoryHolder_Controller extends Page_Controller
{
    /**
     * @return DataList {ProductCategory}
     */
    public function ProductCategories()
    {
        $categories = ProductCategory::get()
            ->filter(array(
                'ClassName' => 'ProductCategory'
            ))
            ->sort('Title', 'ASC');
        return $categories;
    }

    /**
     * @return DataList {CollectionCategory}
     * filter -> CollectionType{Designer}
     */
    public function DesignerCategories()
    {
        $collections = CollectionCategory::get()
            ->filter(array(
                'CollectionType' => 'Designer'
            ))
            ->sort('Created', 'ASC');
        return $collections;
    }

    /**
     * @return DataList {CollectionCategory}
     * filter -> CollectionType{Basic}
     */
    public function BasicCategories()
    {
        $collections = CollectionCategory::get()
            ->filter(array(
                'CollectionType' => 'Basic'
            ))
            ->sort('Created', 'ASC');
        return $collections;
    }

}