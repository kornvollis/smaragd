<?php
/**
 * Created by PhpStorm.
 * User: omli
 * Date: 2014.03.16.
 * Time: 17:53
 */
class AdminController extends Controller {

    /**
     * Show the profile for the given user.
     */
    private $adminMenu;

    function __construct() {
        $this->adminMenu = App::make('AdminMenu');
        $this->adminMenu->init();
    }

    public function show()
    {
        $products = Product::all();
		
        return View::make('admin.index', array("products" => $products, "menu" => $this->adminMenu));
    }

    public function addCategory($name) {
       // $this->adminMenu->addCategoryToEnd()
    }
}

?>