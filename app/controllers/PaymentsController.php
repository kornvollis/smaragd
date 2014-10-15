<?php

use smaragd\menu\AdminMenu;

class PaymentsController extends Controller {

	public function show() 
    {
    	return View::make('payments.payments');
    }
    
    public function order($step)
    {
    	/*
    	$data = array();
    	$data['lastName']  = Input::get('lastname');
    	$data['firstName'] = Input::get('firstname');
    	$data['email']     = Input::get('email');
    	$data['phone']     = Input::get('phone');
    	$data['address']   = Input::get('address');
    	$data['lasteName'] = Input::get('lastname');
    	$data['cartItems'] = SCart::getItems();
    	
    	$admins = array('kornvollis@gmail.com', 'postmaster@smaragdut.hu');
    	
    	
    	Mail::send('emails.order', $data, function($message) use ($data)
		{
		    $message->to('postmaster@smaragdut.hu', 'Smaragd.hu')->subject('Smragad vásrálás!');
		});
    	
    	Mail::send('emails.order_confirm', $data, function($message) use ($data)
		{
		    $message->to($data['email'], 'www.Smaragdut.hu')->subject('Smaragdut.hu sikeres vásárlás!');
		});
    	
		SCart::removeAll();
		
    	return Redirect::action('PaymentsController@orderSuccess');
    	
    	*/
    	
    	return View::make('payments.payment_process', array('step' => $step));
    }
	
    public function orderSuccess()
    {
    	return View::make('payments.order_success');
    }
}

?>