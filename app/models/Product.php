<?php

class Product extends Eloquent {
    public $timestamps = false;
	
	public function category()
    {
        return $this->hasOne('Category', 'id', 'category_id');
    }
    
    public function images()
    {
    	return "images";
    }
}

?>