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

/* ADMIN Routes */
Route::get('/admin/{id?}', array('before' => 'auth.basic', 'as' => 'admin-show', 'uses' => 'AdminController@show'));
Route::post('add-category', array('uses' => 'AdminController@addCategory', 'files'=> true));
Route::post('edit-category/{id}', array('uses' => 'AdminController@editCategory'));
Route::post('update-product', array('uses' => 'AdminController@updateProduct'));
Route::post('upload-product-image', array('uses' => 'AdminController@uploadProductImage'));
Route::get('delete-product-image', array('as' => 'delete-product', 'uses' => 'AdminController@deleteProductImage'));
Route::get('remove-category/{id}', array('uses' => 'AdminController@removeCategory'));
Route::get('add-product', function() {return View::make('admin.product_add');});
Route::post('add-product', array('uses' => 'AdminController@addProduct'));
Route::get('edit-product/{id}', function($id) 
{
    return View::make('admin.product_edit', array("product" => Product::find($id)) );
    //return "mamsamas" + $id;
});


/* SEARCH RESULTS */
Route::get('/Kereses/{search_param}', array('as' => 'search-results', 'uses' => 'MainController@searchResults'));

/* MAIN ROUTES */
Route::get('/', array('as' => 'home', 'uses' => 'MainController@homepage'));
Route::get('/Rolunk', array('as' => 'about', 'uses' => 'MainController@about'));
Route::get('/Kosar', array('as' => 'cart', 'uses' => 'CartController@cart'));
Route::post('/cart-add', array('as' => 'cart-add', 'uses' => 'CartController@add'));
Route::get('/Termekek/{id?}', array('as' => 'products', 'uses' => 'MainController@products'));
Route::get('/Szallitas-fizetes', array('as' => 'shippinginfo', 'uses' => 'MainController@shippinginfo'));
Route::get('/info/{id}', array('as' => 'info', 'uses' => 'MainController@info'));
/* Route::get('/Kapcsolat', array('as' => 'contact', 'uses' => 'MainController@contact')); */

/* CART */
Route::get('/cart-remove-all', array('as' => 'cart-remove-all', 'uses' => 'CartController@removeAll'));
Route::get('/cart-remove/{id}', array('as' => 'cart-remove', 'uses' => 'CartController@remove'));

/* CASHIER */
Route::get('/Penztar', array('as' => 'payments', 'uses' => 'PaymentsController@show'));
Route::post('/Rendeles', array('as' => 'order', 'uses' => 'PaymentsController@order'));
Route::get('/SikeresRendeles', array('as' => 'order-success', 'uses' => 'PaymentsController@orderSuccess'));