<?php

class ProductImage extends Eloquent {
	
	protected $fillable = array('path', 'product_id');
	
	protected $table = 'product_images';
    public $timestamps = false;
}

?>