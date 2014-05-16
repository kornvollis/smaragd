<?php

class Product extends Eloquent {
    public $timestamps = true;
	protected $fillable = array('id', 'name', 'description', 'netto_price', 'price', 'profit_key', 'category_id', 'isFeatured');
    
	public function category()
    {
        return $this->hasOne('Category', 'id', 'category_id');
    }
    
    public function images()
    {
    	 return $this->hasMany('ProductImage');
    }
    
	public function options()
    {
    	 return $this->hasMany('ProductOption');
    }
    
    public function getFirstImage()
    {
    	$prefix = URL::asset('images/p/') . '/';
    	if(count($this->images) > 0) return $prefix . $this->images->first()->path;
    	
    	return $prefix . "default.jpg";
    }
    
}

?>