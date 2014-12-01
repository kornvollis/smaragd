<?php
namespace smaragd\user;

use smaragd\address\Address;

class GuestUser {
    public $firstName;
    public $lastName;
    public $email;
    public $phone;
    public $shippingAddress;
    public $billingAddress;

    function __construct($firstName, $lastName, $email, $phone, $shippingAddress, $billingAddress) {
        $this->firstName = $firstName;
        $this->lastName = $lastName;
        $this->email = $email;
        $this->phone = $phone;

        $this->shippingAddress = $shippingAddress;
        if($shippingAddress == null) {
            $this->shippingAddress = new Address("", "", "", "");
        }
        $this->billingAddress = $billingAddress;
        if($billingAddress == null) {
            $this->billingAddress = new Address("", "", "", "");
        }
    }
}
?>