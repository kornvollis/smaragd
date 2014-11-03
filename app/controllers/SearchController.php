<?php

use smaragd\menu\AdminMenu;

class SearchController extends Controller {

    public function searchResults()
    {
        $search_param = Input::get('search');
        $searchRegexp = "'.*" . $search_param . ".*'";
        $products = Product::whereRaw( "name REGEXP " . $searchRegexp .
                                       " or description REGEXP " . $searchRegexp .
                                       " or code REGEXP " . $searchRegexp)->get();

        return View::make('search_results', array('products' => $products) );
    }
}