<?php

class CategoryManagerController extends Controller {
	
	public function postAddCategory() {
		
		$input_stuff = Input::get('category_id') . " , " . Input::get('position') . " , " . Input::get('category_name');
		
		$cat = new Category();
		$cat->name = Input::get('category_name');
		
		Menu::addCategory($cat, Category::find(Input::get('category_id')), Input::get('position'));
		
		echo "kakas " . $input_stuff;
	}
	
	public function postApplyReorder() 
    {    	
    	Menu::reorder(Input::get('orders'));
    	
    	return "sziszifuszKA";
    }
}

?>