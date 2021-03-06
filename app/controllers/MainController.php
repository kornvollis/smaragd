<?php

use smaragd\menu\AdminMenu;

class MainController extends Controller {

    private $adminMenu;

    function __construct() {
    }

    public function homepage($id = null)
    {
    	//$featuredProducts = Product::where('isFeatured' , '=', 1)->get();
    	$featuredProducts = Product::orderBy(DB::raw('RAND()'))->take(8)->get();
    	$wells = Product::where('category_id', '=', 1350)->take(8)->get();
    	$data = array('featuredProducts' => $featuredProducts, 
    				  'wells' => $wells);
    	
        return View::make('home', $data);
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
}

?>