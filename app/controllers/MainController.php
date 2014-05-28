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
        return View::make('products', array('products' => $displayedProds, 'category' => $category));
    }
    
	public function shippinginfo()
    {    	
        return View::make('shippinginfo');
    }
    
    public function info($id) 
    {
    	return View::make('info', array('product' => Product::find($id)));
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