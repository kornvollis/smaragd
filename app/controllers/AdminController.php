<?php

use smaragd\menu\AdminMenu;

class AdminController extends Controller {

    /**
     * Show the profile for the given user.
     */
    private $adminMenu;

    function __construct() {
        $this->adminMenu = Menu::getFacadeRoot();
    }

    public function show($id = null)
    {
    	if(!is_null($id)) $displayProds = Product::where('category_id', '=', $id)->get(); 
    	else $displayProds = Product::all();
    	
        return View::make('admin.index', array("products" => $displayProds, "menu" => $this->adminMenu));
    }
	
	public function addCategory() {
		$category = Category::find(Input::get('id'));
		if(isset($category))
		{
			$category->fill(Input::all());
			$category->save();
		}		
		return Redirect::to('/admin');
	}
	
	public function editCategory() {
		$category = Category::find(Input::get('id'));
		if(isset($category))
		{
			$category->fill(Input::all());
			$category->save();
		}		
		return Redirect::to('/admin');
	}
	
	public function removeCategory($id) 
	{
		$this->adminMenu->removeCategory($id);
		
		return Redirect::to('/admin');
	}
	
	public function addProduct() {
		$product = new Product();
		$product->fill(Input::all());
		$product->save();
		
		return Redirect::to('edit-product/' . $product->id);
	}
	
	public function updateProduct()
	{		
		$product = Product::find(Input::get('id'));
        $product->fill(Input::all());
        $product->save();

        return Redirect::to('/admin');
	}
	
	public function uploadProductImage()
	{
		$file = Input::file('image');
		$id = Input::get('id');
		$destinationPath = 'images/p/';
		
		$prodImage = new ProductImage(array('path' => $file->getClientOriginalName(), 'product_id' => $id));
		$prodImage->save();
		
		Input::file('image')->move($destinationPath, $file->getClientOriginalName());
		return Redirect::to('edit-product/' . $id);
	}
	
	public function deleteProductImage()
	{
		$id = Input::get('id'); 
		$product_id = Input::get('product_id');
		
		ProductImage::find($id)->delete();
		return Redirect::to('edit-product/' . $product_id);
	}
}

?>