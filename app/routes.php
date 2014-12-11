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


/* USER */
Route::get('/regisztracio', array('as' => 'registration', 'uses' => 'UserController@viewRegisterForm'));
Route::post('/action_register', array('as' => 'action_register', 'uses' => 'UserController@register'));
Route::post('/action_login', array('as' => 'action_login', 'uses' => 'UserController@login'));
Route::get('/login', array('as' => 'viewLogin', 'uses' => 'UserController@viewLogin'));

/* Reminder */
Route::controller('reminders', 'RemindersController');


/* DB MANAGER */
Route::get('/admin/database-manager', array('uses' => 'DatabaseBackupController@show'));

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

/* SEARCH RESULTS */
Route::post('/Kereses', array('as' => 'search-results', 'uses' => 'SearchController@searchResults'));

/* MAIN ROUTES */
Route::get('/', array('as' => 'home', 'uses' => 'MainController@homepage'));
Route::get('Rolunk', array('as' => 'about', 'uses' => 'MainController@about'));
Route::get('/Kosar', array('as' => 'cart', 'uses' => 'CartController@cart'));
Route::post('/cart-add', array('as' => 'cart-add', 'uses' => 'CartController@add'));
Route::get('/Szallitas-fizetes', array('as' => 'shippinginfo', 'uses' => 'MainController@shippinginfo'));
Route::get('/info/{id}', array('as' => 'info', 'uses' => 'MainController@info'));

/* PRODUCTS */
Route::get('termekek/{id?}',  array('as' => 'products', 'uses' => 'ProductsController@showProducts'));

/* CART */
Route::get('/cart-remove-all', array('as' => 'cart-remove-all', 'uses' => 'CartController@removeAll'));
Route::get('/cart-remove/{product_id}/{option_id?}', array('as' => 'cart-remove', 'uses' => 'CartController@remove'));
Route::post('/updateItem', array('as' => 'cart-updateItem', 'uses' => 'CartController@updateItem'));

/* PAYMENT */
Route::get('/Rendeles/{step?}', array('as' => 'order', 'uses' => 'PaymentsController@order'));
Route::get('/SikeresRendeles', array('as' => 'orderSuccess', 'uses' => 'PaymentsController@orderSuccess'));
Route::get('/Szemelyes-adatok', array('as' => 'showGuestUserForm', 'uses' => 'PaymentsController@showGuestUserForm'));
Route::get('/Szemelyes-adatok-jovahagyas', array('as' => 'showGuestUserConfirmation', 'uses' => 'PaymentsController@showGuestUserConfirmation'));
Route::get('/Szallitasimodok', array('as' => 'showShippingOptions', 'uses' => 'PaymentsController@showShippingOptions'));
Route::get('/Osszesites', array('as' => 'showPaymentSummary', 'uses' => 'PaymentsController@showPaymentSummary'));
Route::post('/processUserData', array('as' => 'processUserData', 'uses' => 'PaymentsController@processUserData'));

/* ERRORS */
App::missing(function($exception)
{
    return Response::view('errors.missing', array(), 404);
});

