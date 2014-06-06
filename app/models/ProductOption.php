<?php

class ProductOption extends Eloquent {
	public $timestamps = true;
	protected $fillable = array('id', 'product_id', 'description', 'code', 'price', 'product_image_id');
	
	protected $table = 'product_options';
	
	public function image()
    {
    	return $this->hasOne('ProductImage', 'id', 'product_image_id');
    }
    
    public function imageSource()
    {
    	if(isset($this->image))
    	{
    		return $this->image->source();
    	} else {
    		return URL::asset('images/p/default.png');
    	}
    }
}

?>