<?php 
namespace smaragd\cart;

use Illuminate\Support\Collection;
use Illuminate\Support\Facades\App;

class Cart {
	private $products = ["asdasd", "asdasd", "kkkk"];
	
	public function getProducts()
	{
		return $this->products;
	}
	
	public function addProduct()
	{
		
	}
}

?>