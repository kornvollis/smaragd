<?php

use smaragd\menu\AdminMenu;
use smaragd\user\GuestUser;

class PaymentsController extends Controller {

	public function show() 
    {
    	return View::make('payments.payments');
    }
    
    public function order($step)
    {
    	return View::make('payments.payment_process', array('step' => $step));
    }

    public function processUserData() {
        $guestUser = new GuestUser(Input::get('firstname'),Input::get('lastname'),Input::get('email'),Input::get('phone'),null,null);
        Session::put("guest_user", $guestUser);

        return View::make('payments.payment_process', array('step' => 3));
    }

    public function orderSuccess()
    {
    	return View::make('payments.order_success');
    }
}

?>