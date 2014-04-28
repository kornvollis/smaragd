<?php

use smaragd\menu\AdminMenu;

class PaymentsController extends Controller {

	public function show() 
    {
    	return View::make('payments.payments');
    }
    
    public function order()
    {
    	//Redirect::return View::make('payments.order_success');
    	return Redirect::action('PaymentsController@orderSuccess');
    }
	
    public function orderSuccess()
    {
    	return View::make('payments.order_success');
    }
}

?>