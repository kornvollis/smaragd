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
    
    public function updateItem()
    {
    	SCart::update(Input::get('qty'), Input::get('product_id'), Input::get('option_id'));
    	
    	$obj = array();
    	$obj["sumPrice"] = SCart::sumPrice();
    	$obj["itemPrice"] = SCart::getItem(Input::get('product_id'), Input::get('option_id'))->sumPrice();
    	return json_encode($obj);
    }
    
    public function removeAll()
    {
    	SCart::removeAll();
    	return View::make('cart.cart');
    }
    
	public function remove($product_id, $option_id = null)
    {
    	SCart::remove($product_id, $option_id);
    	return View::make('cart.cart');
    }
}

?>