<?php

use smaragd\menu\AdminMenu;
use smaragd\user\GuestUser;
use smaragd\address\Address;

class PaymentsController extends Controller {

	public function show() 
    {
    	return View::make('payments.payments');
    }
    
    public function order($step)
    {
    	return View::make('payments.payment_process', array('step' => $step));
    }

    public function showGuestUserForm() {
        return View::make('payments.user_and_address', array('step' => 2));
    }

    public function showGuestUserConfirmation() {
        return View::make('payments.user_address_confirmation', array('user' => Session::get('guest_user'), 'step' => 3));
    }

    public function processUserData() {
        $address = new Address(Input::get('city'), Input::get('address'), Input::get('postcode'));
        $billing_address = null;
        if(Input::get('shipping_billing_address') != null) {
            $billing_address = new Address(Input::get('billing_city'), Input::get('billing_address'), Input::get('billing_postcode'), Input::get('billing_company'));
        }
        $guestUser = new GuestUser(Input::get('firstname'),Input::get('lastname'),Input::get('email'),Input::get('phone'),$address, $billing_address);
        Session::put("guest_user", $guestUser);

        return Redirect::to('/Szemelyes-adatok-jovahagyas');
    }

    public function orderSuccess()
    {
    	return View::make('payments.order_success');
    }
}

?>