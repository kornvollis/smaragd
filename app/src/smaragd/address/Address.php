<?php
namespace smaragd\address;

class Address {
    public $companyName;
    public $street;
    public $zipCode;
    public $city;

    function __construct($companyName, $street, $zipCode, $city) {
        $this->companyName = $companyName;
        $this->street = $street;
        $this->zipCode = $zipCode;
        $this->city = $city;
    }

}
?>