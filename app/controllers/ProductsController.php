<?php

use smaragd\menu\AdminMenu;

class ProductsController extends Controller {

    public function showProducts($category_id = null)
    {
        if(!is_null($category_id))
        {
            $category = Category::find($category_id);
            $displayedProds = Product::where('category_id', '=', $category_id)->get();
        } else {
            $category = Category::first();
            $displayedProds = Product::where('category_id', '=', $category->id)->get();
        }

        $data = array();
        $data['products'] = $displayedProds;
        $data['category'] = $category;

        if(isset($category))
        {
            $data['breadCrumbs'] = array(
                array(
                    'name' => $category->name,
                    'url'  => URL::action('products', array('id' => $category_id))
                )
            );
        }

        return View::make('products', $data);
    }
}