<?php

class CategoryManagerController extends Controller {
	
	public function postAddCategory() {
		
		$input_stuff = Input::get('category_id') . " , " . Input::get('position') . " , " . Input::get('category_name');
		
		
		
		echo "kakas " . $input_stuff;
	}
}

?>