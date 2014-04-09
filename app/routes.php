<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::post('add-category', array('uses' => 'AdminController@addCategory', 'files'=> true));
Route::post('edit-category/{id}', array('uses' => 'AdminController@editCategory'));
Route::post('update-product', array('uses' => 'AdminController@updateProduct'));
Route::post('upload-product-image', array('uses' => 'AdminController@uploadProductImage'));
Route::get('delete-product-image', array('as' => 'delete-product', 'uses' => 'AdminController@deleteProductImage'));
Route::get('/admin/{id?}', 'AdminController@show');

Route::get('remove-category/{id}', array('uses' => 'AdminController@removeCategory'));
Route::get('edit-product/{id}', function($id) 
{
    return View::make('admin.product_edit', array("product" => Product::find($id)) );
    //return "mamsamas" + $id;
});


/* MAIN ROUTES */
Route::get('/', array('as' => 'home', 'uses' => 'MainController@homepage'));
Route::get('/Rolunk', array('as' => 'about', 'uses' => 'MainController@about'));
Route::get('/Termekek/{id?}', array('as' => 'products', 'uses' => 'MainController@products'));
Route::get('/Szallitas-fizetes', array('as' => 'shippinginfo', 'uses' => 'MainController@shippinginfo'));
/* Route::get('/Kapcsolat', array('as' => 'contact', 'uses' => 'MainController@contact')); */