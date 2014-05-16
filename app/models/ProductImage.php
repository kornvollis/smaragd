<?php

class ProductImage extends Eloquent {
	public $timestamps = true;
	protected $fillable = array('product_id', 'name', 'path');
	
	protected $table = 'product_images';

}

?>