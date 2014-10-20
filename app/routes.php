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

/* Category Manager */
Route::controller('category-manager', 'CategoryManagerController');

/* ADMIN Routes */
Route::get('/admin/show-add-product', array('uses' => 'AdminController@showAddProduct'));
Route::get('/admin/show-category-manager', array('uses' => 'AdminController@showCategoryManager'));
Route::get('/admin/show-new-category', array('uses' => 'AdminController@showNewCategory'));
Route::get('/admin/show-rename-category', array('uses' => 'AdminController@showRenameCategory'));
Route::post('/admin/renameCategories', array('uses' => 'AdminController@renameCategories'));
Route::get('/admin/show-reorder-category', array('uses' => 'AdminController@showReorderCategory'));

Route::get('/admin/{id?}', array('before' => 'auth.basic', 'as' => 'admin-show', 'uses' => 'AdminController@show'));
Route::post('add-category', array('uses' => 'AdminController@addCategory', 'files'=> true));
Route::post('edit-category/{id}', array('uses' => 'AdminController@editCategory'));
Route::post('update-product', array('uses' => 'AdminController@updateProduct'));
Route::post('upload-product-image', array('uses' => 'AdminController@uploadProductImage'));
Route::get('delete-product-image', array('as' => 'delete-product', 'uses' => 'AdminController@deleteProductImage'));
Route::get('remove-category/{id}', array('uses' => 'AdminController@removeCategory'));
Route::post('/admin/add-product', array('uses' => 'AdminController@addProduct'));
Route::get('/admin/remove-product/{id}', array('uses' => 'AdminController@removeProduct'));
Route::get('/admin/edit-product/{id}', array('uses' => 'AdminController@editProduct'));
Route::post('/admin/add-product-option', array('uses' => 'AdminController@addProductOption'));
Route::post('/admin/edit-product-option', array('uses' => 'AdminController@editProductOption'));
Route::post('/admin/delete-product-option', array('uses' => 'AdminController@deleteProductOption'));

//{
  //  return View::make('admin.product_edit', array("product" => Product::find($id)) );
//});


/* SEARCH RESULTS */
Route::post('/Kereses', array('as' => 'search-results', 'uses' => 'MainController@searchResults'));

/* MAIN ROUTES */
Route::get('/', array('as' => 'home', 'uses' => 'MainController@homepage'));
Route::get('Rolunk', array('as' => 'about', 'uses' => 'MainController@about'));
Route::get('/Kosar', array('as' => 'cart', 'uses' => 'CartController@cart'));
Route::post('/cart-add', array('as' => 'cart-add', 'uses' => 'CartController@add'));
/* Route::get('/Termekek/{id?}', array('as' => 'products', 'uses' => 'MainController@products')); */
Route::get('/Szallitas-fizetes', array('as' => 'shippinginfo', 'uses' => 'MainController@shippinginfo'));
Route::get('/info/{id}', array('as' => 'info', 'uses' => 'MainController@info'));
/* Route::get('/Kapcsolat', array('as' => 'contact', 'uses' => 'MainController@contact')); */


/* PRODUCTS */
Route::get('termekek/{id?}',  array('as' => 'products', 'uses' => 'ProductsController@showProducts'));

/* CART */
Route::get('/cart-remove-all', array('as' => 'cart-remove-all', 'uses' => 'CartController@removeAll'));
Route::get('/cart-remove/{product_id}/{option_id?}', array('as' => 'cart-remove', 'uses' => 'CartController@remove'));
Route::post('/updateItem', array('as' => 'cart-updateItem', 'uses' => 'CartController@updateItem'));

/* CASHIER */
Route::get('/Penztar', array('as' => 'payments', 'uses' => 'PaymentsController@show'));
Route::get('/Rendeles/{step?}', array('as' => 'order', 'uses' => 'PaymentsController@order'));
Route::get('/SikeresRendeles', array('as' => 'order-success', 'uses' => 'PaymentsController@orderSuccess'));

/* ERRORS */
App::missing(function($exception)
{
    return Response::view('errors.missing', array(), 404);
});

/* TEMP */
Route::get('/Mail', function(){
	Mail::send('emails.test', array('token'=>'SAMPLE'), function($message)
	{
	    $message->to('kornvollis@gmail.com', 'John Smith')->subject('Welcome!');
	});
	return "sija";
});

