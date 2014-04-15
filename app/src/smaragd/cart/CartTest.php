<?php

use Illuminate\Support\Collection;
use smaragd\cart\Cart;

class CartTest extends TestCase 
{
	private $cart;

	public function setUp()
	{
		parent::setUp();
	 
	}

    public function testFacedeDebug() {
        $this->assertEquals("szaza", SCart::kosar());
    }
}