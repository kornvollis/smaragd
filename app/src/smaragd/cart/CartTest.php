<?php

use Illuminate\Support\Collection;
use smaragd\cart\Cart;
use smaragd\cart\CartItem;

class CartTest extends TestCase 
{
	//private $cart = array();

	public function setUp()
	{
		parent::setUp();
	}
	
	public function testAddCart() {
        $cartItem = new CartItem();
		SCart::add($cartItem);
        
        $this->assertEquals(1, SCart::num());
    }
	
    public function testRemoveCart() {
        SCart::add(1);
        SCart::add(1);
        SCart::remove(1);
        
        $this->assertEquals(1, SCart::num(1));
    }
    
	public function testRemoveAllCart() {
        SCart::add(1);
        SCart::add(1);
        SCart::add(1);
        SCart::add(1);
        SCart::removeAll(1);
        
        $this->assertEquals(0, SCart::num(1));
    }
}