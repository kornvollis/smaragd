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

Route::get('/', function()
{
	//return View::make('hello');
    $users = Product::all();

    $resp = "";
    foreach($users as $user)
    {
        $resp = $resp . $user->name;
    }
    return View::make('admin');
    //return "kukubenko" . $resp;
});