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

    public function showPaymentSummary() {
        return View::make('payments.summary', array('step' => 5));
    }

    public function showShippingOptions() {
        return View::make('payments.shipping_options', array('step' => 4));
    }

    public function showGuestUserForm() {

        $guest_user = new GuestUser("","","","",null, null);

        if(Session::get('guest_user') != null ) {
            $guest_user = Session::get('guest_user');
        }

        return View::make('payments.user_and_address', array('user' => $guest_user, 'step' => 2));
    }

    public function showGuestUserConfirmation() {
        return View::make('payments.user_address_confirmation', array('user' => Session::get('guest_user'), 'step' => 3));
    }

    public function processUserData() {
        $address = new Address(Input::get('city'), Input::get('address'), Input::get('postcode'));
        $billing_address = null;
        if(Input::get('shipping_billing_address') == "check") {
            $billing_address = new Address(Input::get('billing_city'), Input::get('billing_address'), Input::get('billing_postcode'), Input::get('billing_company'));
        }
        $guestUser = new GuestUser(Input::get('firstname'),Input::get('lastname'),Input::get('email'),Input::get('phone'),$address, $billing_address);
        Session::put('guest_user', $guestUser);

        return Redirect::to('/Szemelyes-adatok-jovahagyas');
    }

    private function sendOrderMails()
    {
        $guest_user = Session::get('guest_user');

        $data = array();
        $data['user']      = $guest_user;
        $data['cartItems'] = SCart::getItems();

        $admins = array('kornvollis@gmail.com', 'postmaster@smaragdut.hu');


        Mail::send('emails.order', $data, function($message) use ($data)
        {
            $message->to('postmaster@smaragdut.hu', 'Smaragd.hu')->subject('Smragad vásrálás!');
        });

        Mail::send('emails.order_confirm', $data, function($message) use ($data)
        {
            $message->to($data['user']->email, 'www.Smaragdut.hu')->subject('Smaragdut.hu sikeres vásárlás!');
        });

        SCart::removeAll();

        return Redirect::action('PaymentsController@orderSuccess');
    }

    public function orderSuccess()
    {
        $this->sendOrderMails();



    	return View::make('payments.order_success');
    }
}

?>