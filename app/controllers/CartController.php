<?php

use smaragd\menu\AdminMenu;

class CartController extends Controller {

	public function cart()
    {
    	return View::make('cart.cart');
    }
    
	public function add()
    {
        $qty = Input::get('qty');
        $id = Input::get('id');
        $option = Input::get('option');

        $validator = Validator::make(
          array(
              'qty' => $qty,
              'id' => $id,
              'option' => $option
          ),
          array(
              'qty' => 'required',
              'id' => 'required',
              'option' => 'required'
          )
        );

        $response = array();

        if ($validator->passes())
        {
            SCart::add($qty, $id, $option);
            $response['status'] = 'success';
            return json_encode($response);
        } else {
            $response['status'] = 'error';
            return json_encode($response);
        }
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