<?php

class AdminMenu  {

    const ROOT_CATEGORY = "Fő kategória";

    public $categories;
	public $lastCategory;
	public $firstCategory;

	function init()
	{
        if(!isset($this->categories)) {
           $this->categories = Category::all();
        }

		foreach ($this->categories as $cat) {
			$this->categories[$cat->lft] = $cat;
			
			if(!isset($this->lastCategory))
			{
				$this->lastCategory = $cat;
				$this->firstCategory = $cat;
			} else if($this->lastCategory->rgt + 1 == $cat->lft) {
				$this->lastCategory = $cat;
			}
		}
    }

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
	
	public function size() { return count($this->categories);}
	
	public function addCategoryToEnd($category)
	{
		if($this->isEmpty()) {
			$category->lft = 1;
			$category->rgt = 2;
			$this->categories[1] = $category;
			$this->firstCategory = $category;
			$this->lastCategory = $category;
		} else {
			$category->lft = $this->lastCategory->rgt + 1;
			$category->rgt = $category->lft + 1;
			$this->categories[$category->lft] = $category;
			$this->lastCategory = $category;
		}
		
		$category->save();
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
	
	private function isEmpty() {
		return ( count($this->categories) == 0 );
	}
	
}

?>