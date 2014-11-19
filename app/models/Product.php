<?php

class Product extends Eloquent {
    public $timestamps = true;
	protected $fillable = array('id', 'code', 'name', 'description', 'price', 'old_price', 'profit_key', 'category_id', 'isFeatured');
    
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
    
    public function hasOptions() {
    	if(count($this->options) > 0) {
    		return true;
    	} else {
    		return false;
    	}
    }

    public function hasDiscount() {
        return isset($this->old_price);
    }

    public function displayedPrice($option_id = null) {
    	$price = $this->price;
    	if(!is_null($option_id))
    	{
    		$price = ProductOption::find($option_id)->price;
    	}
    	return round($price * 1.27 * $this->profit_key);
    }
    
    public function lowestPrice()
    {
    	if($this->hasOptions())
    	{
    		$lowestPrice = 999999999;
    		foreach ($this->options as $option)
    		{
    			if($option->price < $lowestPrice) {
					$lowestPrice = $option->price;
    			}
    		}
    		return round($lowestPrice * 1.27 * $this->profit_key);
    	} else {
    		return round($this->price * 1.27 * $this->profit_key);
    	}
    }
    
    public function getFirstImage()
    {
    	$prefix = URL::asset('images/p/') . '/';
    	if(count($this->images) > 0) return $prefix . $this->images->first()->path;
    	
    	return $prefix . "default.jpg";
    }
    
}

?>