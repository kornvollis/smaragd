<?php 
namespace smaragd\cart;

class CartItem {
	private $product;
	private $quantity = 0;
	
	public function add($num)
	{
		$this->quantity += $num;
	}
	
	public function remove($num)
	{
		$this->quantity -= $num;
		if($this->quantity < 0) $this->quantity = 0;
	}
	
	public function  removeAll()
	{
		$this->quantity = 0;
	}
	
	public function setProduct($prod) {
		$this->product = $prod;
	}
	
	public function getProduct() {
		return $this->product;
	}
	
	public function getQuantity() {
		return $this->quantity;
	}
	
	public function sumPrice()
	{
		return $this->product->price * $this->quantity;
	}
}

?>