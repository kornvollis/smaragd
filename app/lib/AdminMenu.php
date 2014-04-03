<?php

use Illuminate\Support\Collection;

class AdminMenu  {

    const ROOT_CATEGORY = "Fo kategoria";

    public $categories;

	public function selectArray($withRoot = true) {
		if($withRoot) $result = array("-1" => AdminMenu::ROOT_CATEGORY);
		
		foreach ($this->categories as $cat) {
			$result[$cat->id] = $cat->name;
		}
		return $result;
	}
	
	public function getAllChildren($parent)
	{
		$children = new Collection();
		foreach ($this->categories as $child) 
		{
			if($child->lft > $parent->left && $child->rgt < $parent->rgt)
			{
				$children->push($child);
			}
		}
		return $children;
	}
	
	public function getFirstChildCategories($parent)
	{
		if(!isset($parent) || !$parent->hasChild()) return new Collection();
		$result = new Collection();
		return $this->getNeighbours($this->firstChildOf($parent), $result) ;
	}
	
	private function firstChildOf($category) 
	{
		if(isset($category))
		{
			return $this->findCategoryByLft($category->lft + 1);
		}
		return null;
	}
	
	private function getNeighbours($node, &$accu)
	{
		if($node != null)
		{
			$accu->push($node);
			$this->getLeftNeighbours($node, $accu);
			$this->getRightNeighbours($node, $accu);
		}
		
		return $accu;
	}
	
	private function getLeftNeighbours($node, &$accu)
	{
		$x = is_null($node);
		$y = ($node == null);
		$z = isset($node);
		if(!is_null($node))
		{
			Log::info(" Left: " + $node->name + " , " + $node->left + " , "  + $node->rgt);
			$leftNeighbour = $this->findCategoryByRgt($node->lft - 1);
			
			if(isset( $leftNeighbour))
			{
				$accu->push($leftNeighbour);
				return $this->getLeftNeighbours($leftNeighbour, $accu);
			} 			
		}
		return $accu;
	}
	
	private function getRightNeighbours($node, &$accu)
	{
		$x = is_null($node);
		$y = ($node == null);
		$z = isset($node);
		if(!is_null($node))
		{
			$leftNeighbour = $this->findCategoryByLft($node->rgt + 1);
			
			if(isset( $leftNeighbour))
			{
				$accu->push($leftNeighbour);
				return $this->getRightNeighbours($leftNeighbour, $accu);
			} 			
		}
		return $accu;
	}

	public function getRootCategories() 
	{
		$rootCategories = new Collection();
		$this->getNeighbours($this->findCategoryByLft(1), $rootCategories);
		return $rootCategories;
	}
	
	public function findCategoryByLft($lft) 
	{
		foreach ($this->categories as $cat) {
			if($cat->lft == $lft) return $cat;
		}
		return null;
	}
	
	public function findCategoryByRgt($rgt) 
	{
		foreach ($this->categories as $cat) {
			if($cat->rgt == $rgt) return $cat;
		}
		return null;
	}
	
	public function findCategoryById($id) 
	{
		foreach ($this->categories as $cat) {
			if($cat->id == $id) return $cat;
		}
		return null;
	}
	
	public function addCategory($category, $parentCategory = null)
	{
		if($parentCategory == null )
		{
			if($this->isEmpty()) {
				$category->lft = 1;
				$category->rgt = 2;
			} else {
				$category->lft = $this->categories->count() * 2 + 1;
				$category->rgt = $category->lft + 1;
			}
		} else { 
			$this->updateRgtLftAfterAddNewCat($parentCategory);
			$category->rgt =  $parentCategory->rgt - 1;
			$category->lft = $category->rgt - 1;
		}		
		
		$this->categories->push($category);

		if (!App::environment('testing')) {$this->saveAll();}
	}
	
	public function removeCategory($id)
	{
		$cat_marked_for_delete = $this->findCategoryById($id);
		
		$deletedItems = 0;
		foreach ($this->categories as $key=>$category)
		{
			if($category->lft >= $cat_marked_for_delete->lft && $category->rgt <= $cat_marked_for_delete->rgt)
			{
				if (!App::environment('testing')) { $category->delete(); }
				$this->categories->forget($key);
				$deletedItems++;
				
			}
		}
		
		foreach ($this->categories as $category)
		{
			if($category->rgt > $cat_marked_for_delete->rgt)
			{
				$category->rgt -= $deletedItems * 2;
				if($category->lft > $cat_marked_for_delete->lft)
				{
					$category->lft -= $deletedItems * 2;
				} 
			}
		}
		
		if (!App::environment('testing')) {	$this->saveAll(); }
	}
	
	public function editCategory($id, $name)
	{
		$category = $this->findCategoryById($id);
		$category->name = $name;
		$category->save();
	}
	
	private function findKey($item) 
	{
		$index = 0;
		foreach ($this->categories as $category) 	
		{
			if($category->id == $item->id) {
				return $index;				
			} 
			$index++;
		}
		return -1;
	}
	
	private function saveAll()
	{
		foreach ($this->categories as $category) 	
		{
			$category->save();
		}
	}
	
	private function updateRgtLftAfterAddNewCat(&$parentCategory) 
	{
		if($parentCategory != null)
		{
			foreach ($this->categories as $category) 	
			{
				if($category->rgt > $parentCategory->rgt)
				{
					$category->rgt = $category->rgt + 2;
					if($category->lft > $parentCategory->lft)
					{
						$category->lft = $category->lft + 2;
					}
				}
			}
			$parentCategory->rgt +=2;
		}
	}
	
	private function isEmpty() {
		return ( count($this->categories) == 0 );
	}
	
}

?>