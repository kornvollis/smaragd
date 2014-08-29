<?php

class Category extends Eloquent {
	public $timestamps = true;
    protected $fillable = array('id', 'name', 'lft', 'rgt');
   
	public function hasChild()
	{
		return ($this->rgt  - $this->lft) != 1;
	}
}

?>