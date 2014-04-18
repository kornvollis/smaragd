<?php 
namespace smaragd\cart;

use Illuminate\Support\Collection;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Product;

class Cart {
	const CART = "CART";
	
	public function getProducts() {
		return $this->items;
	}
	
	public function getAll() {
		return Session::get(Cart::CART);
	}
	
	public function add($id, $num=1) 
	{
		if(!Session::has(Cart::CART)) Session::put(Cart::CART, array());		
		$cartItems = Session::get(Cart::CART);
		
		if(isset($cartItems[$id]))
		{
			$cartItems[$id]->add($num);
		} else {
			$cartItem = new CartItem();
			$model = Product::find($id);
			$cartItem->setProduct($model);
			$cartItem->add($num);
			$cartItems[$id] = $cartItem;
		}
		Session::put(Cart::CART, $cartItems);
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
}

?>