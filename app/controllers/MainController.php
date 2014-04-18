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
       // $this->adminMenu = Menu::getFacadeRoot();
    }

    public function homepage($id = null)
    {
    	$featuredProducts = Product::where('isFeatured' , '=', 1)->get();
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
    
	public function products($id = null)
    {    	
    	if(!is_null($id))
    	{
    		$displayedProds = Product::where('category_id', '=', $id)->get(); 
    	} else {
    		$displayedProds = Product::all();
    	}
        return View::make('products', array('products' => $displayedProds));
    }
    
	public function shippinginfo()
    {    	
        return View::make('shippinginfo');
    }
    
    public function info($id) 
    {
    	return View::make('info', array('product' => Product::find($id)));
    }
}

?>