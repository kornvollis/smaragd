<?php
namespace smaragd\address;

class Address {

    public $street;
    public $zipCode;
    public $city;
    public $companyName;

    function __construct($city, $zipCode, $street, $companyName = null)
    {
        $this->city = $city;
        $this->zipCode = $zipCode;
        $this->street = $street;
        $this->companyName = $companyName;
    }

}
?>