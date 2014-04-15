<?php namespace smaragd\cart;

use Illuminate\Support\ServiceProvider;

class CartServiceProvider extends ServiceProvider {

    public function register()
    {
        $this->app->bind('cart', function()
        {
        	$cart = new Cart();
           return $cart;
        });
    }
}