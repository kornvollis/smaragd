<?php

class AdminController extends Controller {

    private $product;
    private $category; 

    function __construct(Product $product, Category $category) {
    	$this->product  = $product;
    	$this->category = $category;
    }
    
    public function show($category_id = null)
    {
    	try {
    		if(isset($category_id))
    		{
    			$data = ["products"         => $this->product->where('category_id', '=', $category_id)->get(), 
    					 "current_category" => $this->category->find($category_id)];
    			
    			return View::make('admin.index', $data);
    		} else {
    			$category = $this->category->first();
    			$data = ["products"         => $this->product->where('category_id', '=', $category->id)->get(), 
    					 "current_category" => $category];
    			
    			return View::make('admin.index', $data);
    		}
    	} catch (Exception $e) {
    		return View::make('admin.index', array("products" => [], "current_category" => null));
    	}
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
	
	public function addProductOption() {
		$option = new ProductOption();
		$option->fill(Input::all());
		$option->save();
		//return var_dump(Input::all());
	}
	
	public function editProductOption() {
		// $id = Input::get('id');
		try {
		    $prodOption = ProductOption::find(Input::get('id'));
			$prodOption->fill(Input::all());
			$prodOption->save();
		} catch (Exception $e) {
		    echo 'Caught exception: ',  $e->getMessage(), "\n";
		}
		
	}	
	
	public function deleteProductOption() {
		try {
			ProductOption::find(Input::get('id'))->delete();
		} catch (Exception $e) {
		    echo 'Caught exception: ',  $e->getMessage(), "\n";
		}
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
		return Redirect::to(URL::action('AdminController@editProduct', array('id' => $product_id)));
	}
}

?>