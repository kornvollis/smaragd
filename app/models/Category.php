<?php

class Category extends Eloquent {
    public $timestamps = false;
	
	function __construct($name, $lft, $rgt) 
	{
		$this->name = $name;
		$this->lft = $lft;
		$this->rgt = $rgt;
    }
   
	public function hasChild() 
	{
		return ($this->rgt  - $this->lft) != 1;
	}
}

?>