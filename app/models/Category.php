<?php

class Category extends Eloquent {

    protected $fillable = array('id', 'name', 'lft', 'rgt');

    public $timestamps = false;
   
	public function hasChild() 
	{
		return ($this->rgt  - $this->lft) != 1;
	}
}

?>