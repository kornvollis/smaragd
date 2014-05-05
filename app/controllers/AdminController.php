<?php

class AdminController extends Controller {

    private $product; 

    function __construct(Product $product) {
    	$this->product = $product;
    }
    
    public function show($id = null)
    {
    	if(!is_null($id)) $displayProds = $this->product->where('category_id', '=', $id)->get(); 
    	else $displayProds = $this->product->all();
    	
        return View::make('admin.index', array("products" => $displayProds));
    }
	
	public function addCategory() {
		$name = Input::get('name');
		$parent_id = Input::get('parent_id');
		if($parent_id == -1) $pranet_id = null;

		Menu::addCategory(new Category(array("name" => $name)), Menu::findCategoryById($parent_id));

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
		Menu::removeCategory($id);
		return Redirect::to('/admin');
	}
	
	public function removeProduct($id) 
	{
		Product::find($id)->delete();
		
		return Redirect::to('/admin');
	}
	
	public function showAddProduct() {
		return View::make('admin.product_add');
	}
 
	public function addProduct() {
		$product = new Product();
		$product->fill(Input::all());
		$product->save();
		
		return Redirect::to(URL::action('AdminController@editProduct', array('id' => $product->id)));
	}
	
	public function editProduct($id) {
		return View::make('admin.product_edit', array("product" => Product::find($id)) );
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
		return Redirect::to(URL::action('AdminController@editProduct', array('id' => $id)));
	}
	
	public function deleteProductImage()
	{
		$id = Input::get('id'); 
		$product_id = Input::get('product_id');
		
		ProductImage::find($id)->delete();
		return Redirect::to(URL::action('AdminController@editProduct', array('id' => $id)));
	}
}

?>