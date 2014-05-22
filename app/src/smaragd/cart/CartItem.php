<?php 
namespace smaragd\cart;
use Product;
use ProductOption;

class CartItem {
	private $product;
	private $option = null;
	public $quantity;
	
	function __construct($quantity, $product_id, $option_id = null) {
		$this->product = Product::find($product_id);
		$this->option = ProductOption::find($option_id);
		$this->quantity = $quantity;
	}
	
	public function name() {
		return $this->product->name;
	}
	
	public function cartID() {
		return $this->product->id . $this->option->id;
	}
	
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
	
	public function price()
	{
		return $this->product->displayedPrice($this->option->id);
	}
	
	public function sumPrice()
	{
		return $this->price() * $this->quantity;
	}
}

?>