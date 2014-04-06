<?php namespace smaragd\menu;

use Illuminate\Support\ServiceProvider;
use Category;

class AdminMenuServiceProvider extends ServiceProvider {

    public function register()
    {
        $this->app->bind('adminmenu', function()
        {
           $adminMenu = new AdminMenu;
           $adminMenu->categories = Category::all();
           return $adminMenu;
        });
    }
}