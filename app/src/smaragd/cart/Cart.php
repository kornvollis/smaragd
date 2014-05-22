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
	
	public function isInCart($prod_id, $option_id) {		
		foreach($this->getItems() as $item) {
			if($item->cartID() == $prod_id . $option_id) {
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
				if($item->cartID() == $prod_id . $option_id) {
					$item->add($num);
					break;
				}
			}
		} else {
			array_push($items, new CartItem($num, $prod_id, $option_id));
		}
		Session::put(Cart::CART, $items);
	}
	
	public function remove($id)
	{
		if(Session::has(Cart::CART)) {
			$items = Session::get(Cart::CART);
			unset($items[$id]);
			Session::put(Cart::CART, $items);
		} 
	}
	
	public function removeAll()
	{
		if(Session::has(Cart::CART)) {
			Session::put(Cart::CART, array());
		} 
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