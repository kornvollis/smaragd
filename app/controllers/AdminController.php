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
    public function show()
    {
        //$user = User::find($id);
        $products = Product::all();
        
		$categories = Category::all();
		
        return View::make('admin.index', array("products" => $products, "menu" => new AdminMenu($categories)));
    }

}

?>