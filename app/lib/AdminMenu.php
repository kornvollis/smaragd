<?php

class AdminMenu  {

    private $categories = [];
	
	function __construct($categories) 
	{
		foreach ($categories as $cat) {
			$this->categories[$cat->lft] = $cat;
		}
    }
	
	public function getSubCats($left, $right, [])
	{
		
		{
			return 
		} else {
			return [];
		}
	}
	
	public function getRootCategories() 
	{
		if(!isset($this->categories[1])) return [];
		
		$rootCategories = [];
		$firstCategory = $this->categories[1];
		array_push($rootCategories, $firstCategory);
		
		$this->nextCategory($firstCategory, $rootCategories);
		
		return $rootCategories ;
	}
	
	private function nextCategory($category, $accu) 
	{
		if(isset($this->categories[$category->rgt + 1]))
		{	
			$next = $this->categories[$category->rgt + 1];
			
			return $this->nextCategory($next, array_push($accu, $next));
		}
		
		return $accu;
	}
	
}

?>