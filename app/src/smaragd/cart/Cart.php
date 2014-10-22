<?php 
namespace smaragd\cart;

use Illuminate\Support\Collection;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Product;

class Cart {
	const CART = "CART";
	
	public function getItems() {
		if(!Session::has(Cart::CART)) Session::put(Cart::CART, array());
		return Session::get(Cart::CART);
	}
	
	public function getItem($product_id, $option_id) {
		$items = $this->getItems();
		foreach ($items as $item) {
			if($item->equals($product_id, $option_id))
			{
				return $item;
			}
		}
		return null;
	}

	public function isInCart($prod_id, $option_id) {		
		foreach($this->getItems() as $item) {
			if($item->equals($prod_id, $option_id)) {
				return true;
			}
		}
		return false;
	}
	
	public function add($num=1, $prod_id, $option_id = null) 
	{
		$items = $this->getItems();
		
		if($this->isInCart($prod_id, $option_id))
		{
			foreach($items as $item) {
				if($item->equals($prod_id, $option_id)) {
					$item->add($num);
					break;
				}
			}
		} else {
			array_push($items, new CartItem($num, $prod_id, $option_id));
		}
		Session::put(Cart::CART, $items);
	}
	
	public function remove($product_id, $option_id)
	{
		if(Session::has(Cart::CART)) {
			$items = $this->getItems();
			foreach($items as $key => $item) {
				if($item->equals($product_id, $option_id))
				{
					unset($items[$key]);
					Session::put(Cart::CART, $items);
					break;
				}
			}
		} 
	}
	
	public function update($qty, $prod_id, $option_id)
	{
		$items = $this->getItems();
		foreach($items as $item) {
			if($item->equals($prod_id, $option_id))
			{
				$item->quantity = $qty;
				Session::put(Cart::CART, $items);
				break;
			}
		}
	}
	
	public function removeAll()
	{
		if(Session::has(Cart::CART)) {
			Session::put(Cart::CART, array());
		} 
	}
	
	public function sumPrice() {
		$cost = 0;
		foreach($this->getItems() as $item) {
			$cost += $item->sumPrice();
		}
		return $cost;
	}

    public function shippingCost() {
        $sumPrice = $this->sumPrice();

        if($sumPrice < 1)
        {
            return 0;
        }

        if($sumPrice < 15000)
        {
            return 1390;
        }

        if($sumPrice < 30000)
        {
            return 990;
        }

        if($sumPrice < 39000)
        {
            return 690;
        }

        return 0;
    }
	/*
	public function num()
	{
		$numberOfItems = 0;
		if(Session::has(Cart::CART)) $numberOfItems = count(Session::get(Cart::CART)) ;
		return $numberOfItems;
	}*/
}

?>