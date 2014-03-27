<?php

class Category extends Eloquent {
    public $timestamps = false;
	
	function __construct($name="", $lft=0, $rgt=0) 
	{
		parent::__construct();
		
		if($name != "" && $lft != 0 && $rgt != 0)
		{
			$this->name = $name;
			$this->lft = $lft;
			$this->rgt = $rgt;
		}
    }
   
	public function hasChild() 
	{
		return ($this->rgt  - $this->lft) != 1;
	}
}

?>