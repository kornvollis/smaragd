<?php

class AdminMenu  {

    private $categories = [];
	
	function __construct($categories)
	{
		foreach ($categories as $cat) {
			$this->categories[$cat->lft] = $cat;
		}
    }
	/*
	public function getSubCats($left, $right, [])
	{
		
		{
			return 
		} else {
			return [];
		}
	}
	*/
	
	public function getFirstChildCategories($lft, $rgt)
	{
		if(!isset($this->categories[$lft+1])) return [];
		
		$childCategories = [];
		$firstCategory = $this->categories[$lft+1];
		array_push($childCategories, $firstCategory);
		
		$childCategories = $this->nextCategory($firstCategory, $childCategories);
		
		return $childCategories ;
	}
	
	public function getRootCategories() 
	{
		if(!isset($this->categories[1])) return [];
		
		$rootCategories = [];
		$firstCategory = $this->categories[1];
		array_push($rootCategories, $firstCategory);
		
		$rootCategories = $this->nextCategory($firstCategory, $rootCategories);
		
		return $rootCategories ;
	}
	
	private function nextCategory($category, $accu) 
	{
		//Log::info('$category: ' . $category . '  $accu: ' . count($accu) );
	
		if(isset($this->categories[$category->rgt + 1]))
		{	
			$next = $this->categories[$category->rgt + 1];
			
			array_push($accu, $next);
			
			return $this->nextCategory($next, $accu);
		}
		
		return $accu;
	}
	
}

?>