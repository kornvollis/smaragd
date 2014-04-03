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

Route::get('/admin', 'AdminController@show');
Route::post('add-category', array('uses' => 'AdminController@addCategory'));
Route::get('remove-category/{id}', array('uses' => 'AdminController@removeCategory'));
Route::post('edit-category/{id}', array('uses' => 'AdminController@editCategory'));