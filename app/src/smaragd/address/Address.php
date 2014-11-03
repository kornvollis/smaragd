<?php
namespace smaragd\address;

class Address {

    public $street;
    public $zipCode;
    public $city;
    public $companyName;

    function __construct($city, $street, $zipCode, $companyName = null)
    {
        $this->city = $city;
        $this->zipCode = $zipCode;
        $this->street = $street;
        $this->companyName = $companyName;
    }

    public function toString() {
        return $this->companyName + ", " + $this->city + ", " + $this->zipCode + ", " + $this->street;
    }
}
?>