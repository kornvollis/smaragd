<?php
namespace smaragd\user;

class GuestUser {
    private $firstName;
    private $lastName;
    private $email;
    private $shippingAddress;
    private $billingAddress;

    function __construct($firstName, $lastName, $email, $shippingAddress, $billingAddress) {

    }
}
?>