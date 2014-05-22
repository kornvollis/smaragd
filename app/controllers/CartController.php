<?php

use smaragd\menu\AdminMenu;

class CartController extends Controller {

	public function cart() 
    {
    	return View::make('cart.cart');
    }
    
	public function add() 
    {
    	SCart::add(Input::get('qty'), Input::get('id'), Input::get('option'));
    	return Redirect::to(URL::route('cart'));
    	//return View::make('cart.cart');
    }
    
    public function removeAll()
    {
    	SCart::removeAll();
    	return View::make('cart.cart');
    }
    
	public function remove($id)
    {
    	SCart::remove($id);
    	return View::make('cart.cart');
    }
}

?>