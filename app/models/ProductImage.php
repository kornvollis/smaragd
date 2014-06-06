<?php

class ProductImage extends Eloquent {
	public $timestamps = true;
	protected $fillable = array('product_id', 'name', 'path');
	
	protected $table = 'product_images';
	
	public function source()
    {
    	$prefix = URL::asset('images/p/') . '/';
    	if(isset($this->path)) return $prefix . $this->path;
    	
    	return $prefix . "default.png";
    }
}

?>