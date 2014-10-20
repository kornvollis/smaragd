<?php 
namespace smaragd\cart;
use Product;
use ProductOption;

class CartItem {
	public $product_id;
	public $option_id;
	public $quantity;
	
	public $name;
	public $price;
	public $option_description;

    private $product;

	function __construct($quantity, $product_id, $option_id) {
		$this->quantity = $quantity;
		$this->product_id = $product_id;
		$this->option_id = $option_id;
		
		try {
            $this->product = Product::find($product_id);
			
			$this->name = $this->product->name;
			$this->price = $this->product->displayedPrice($option_id);
			if(isset($option_id))
			{
				$this->option_description  = ProductOption::find($option_id)->description;
			}	
		} catch (Exception $e) {
		}
	}
	
	public function name() {
		$name = $this->name;
		if(isset($this->option_description))
		{
			$name = $name . " / " .$this->option_description;
		}
		return $name;
	}
	
	public function equals($prod_id, $option_id) {
		return ($this->product_id == $prod_id && $this->option_id == $option_id);
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
		return $this->price;
	}
	
	public function sumPrice()
	{
		return $this->price * $this->quantity;
	}

    public function image() {
        return $this->product->getFirstImage();
    }
}

?>