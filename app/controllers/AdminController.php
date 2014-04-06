<?php

use smaragd\menu\AdminMenu;

class AdminController extends Controller {

    /**
     * Show the profile for the given user.
     */
    private $adminMenu;

    function __construct() {
        //$this->adminMenu = App::make('AdminMenu');
        //$this->adminMenu->categories = Category::all();//->toArray();
        $this->adminMenu = Menu::getFacadeRoot();
    }

    public function show()
    {
        return View::make('admin.index', array("products" => Product::all(), "menu" => $this->adminMenu));
    }

	public function addCategory() {
		$name = Input::get('name');
		$parent_id = Input::get('parent_id');
		if($parent_id == -1) $pranet_id = null;
	
		$this->adminMenu->addCategory(new Category(array("name" => $name)), $this->adminMenu->findCategoryById($parent_id));
		
		return Redirect::to('/admin');
	}
	
	public function removeCategory($id) 
	{
		$this->adminMenu->removeCategory($id);
		
		return Redirect::to('/admin');
	}
	
	public function updateProduct()
	{
		//$this->adminMenu->editCategory(Input::get('id'), Input::get('name'), Input::get('description'));
		$product = Product::find(Input::get('id'));
        $product->name = "kak";
        $product->save();

        return Redirect::to('/admin');
	}
}

?>