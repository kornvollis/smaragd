<?php

use smaragd\menu\AdminMenu;

class MainController extends Controller {

    /**
     * Show the profile for the given user.
     */
    private $adminMenu;

    function __construct() {
        //$this->adminMenu = App::make('AdminMenu');
        //$this->adminMenu->categories = Category::all();//->toArray();
        //$this->adminMenu = Menu::getFacadeRoot();
    }

    public function homepage($id = null)
    {
    	//$featuredProducts = Product::where('isFeatured' , '=', 1)->get();
    	$featuredProducts = Product::orderBy(DB::raw('RAND()'))->take(8)->get();
        return View::make('home', array('featuredProducts' => $featuredProducts));
    }
    
	public function about()
    {    	
        return View::make('about');
    }
    
	public function contact()
    {    	
        return View::make('contact');
    }
    
	public function products($category_id = null)
    {
    	$category;    	
    	if(!is_null($category_id))
    	{
    		$category = Category::find($category_id);
    		$displayedProds = Product::where('category_id', '=', $category_id)->get();
    	} else {
    		$category = Category::first();
    		$displayedProds = Product::where('category_id', '=', $category->id)->get();
    	}
    	
    	$data = array();
    	$data['products'] = $displayedProds;
    	$data['category'] = $category;
    	if(isset($category))
    	{
    		$data['breadCrumbs'] = array(
	    		array(
	    			'name' => $category->name, 
	    			'url'  => URL::action('products', array('id' => $category_id))
	    		)
    		);
    	}
    	
        return View::make('products', $data);
    }
    
	public function shippinginfo()
    {    	
        return View::make('shippinginfo');
    }
    
    public function info($id) 
    {
    	$product = Product::find($id);
    	
    	$data = array();
    	$data['product'] = $product;
    	$data['breadCrumbs'] = array(
	    	array(
	    		'name' => $product->category->name, 
	    		'url'  => URL::action('products', array('id' => $product->category->id))
	    	), array(
	    		'name' => $product->name, 
	    		'url'  => URL::action('info', array('id' => $product->id))
	    	)
    	);
    	
    	return View::make('info', $data);
    }
    
    public function searchResults()
    {
    	$search_param = Input::get('search');
    	$searchRegexp = "'.*" . $search_param . ".*'";
    	$products = Product::whereRaw("name REGEXP ". $searchRegexp .
    								  " or description REGEXP " . $searchRegexp)->get();
    	
    	return View::make('search_results', array('products' => $products) );
    }
}

?>