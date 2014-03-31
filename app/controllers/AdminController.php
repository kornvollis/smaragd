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
        return View::make('admin.index', array("products" => Product::all(), "menu" => $this->adminMenu));
    }

	public function addCategory() {
	
		$name = Input::get('name');

		$newCategory = new Category(array("name" => $name));
		$this->adminMenu->addCategoryToEnd($newCategory);
		
		return Redirect::to('/admin');
	}
}

?>