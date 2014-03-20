<?php

class Category extends Eloquent {
    public $timestamps = false;
	
	public function hasChild() 
	{
		return ($this->rgt  - $this->lft) != 1;
	}
}

?>