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

Route::post('add-category', array('uses' => 'AdminController@addCategory'));
Route::post('edit-category/{id}', array('uses' => 'AdminController@editCategory'));
Route::post('update-product', array('uses' => 'AdminController@updateProduct'));

Route::get('/admin', 'AdminController@show');
Route::get('remove-category/{id}', array('uses' => 'AdminController@removeCategory'));
Route::get('edit-product/{id}', function($id) 
{
    return View::make('admin.product_edit', array("product" => Product::find($id)) );
    //return "mamsamas" + $id;
});
