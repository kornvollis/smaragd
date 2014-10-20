<?php namespace smaragd\menu;

use Illuminate\Support\Collection;
use Illuminate\Support\Facades\App;
use Product;
use smaragd\category\CategoryOrder;

class AdminMenu {

    const ROOT_CATEGORY = "Fo kategoria";

    public $categories;

    protected static function getFacadeAccessor() { return 'AdminMenu'; }

	public function selectArray($withRoot = true) {
		$result = array();
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
			if($child->lft > $parent->lft && $child->rgt < $parent->rgt)
			{
				$children->push($child);
			}
		}
		return $children;
	}

    public function count() { return $this->categories->count(); }

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
			//Log::info(" Left: " + $node->name + " , " + $node->left + " , "  + $node->rgt);
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
	
	public function addCategory($category, $targetCategory = null, $position = null)
	{
		if($targetCategory == null )
		{
			if($this->isEmpty()) {
				$category->lft = 1;
				$category->rgt = 2;
			} else {
				$category->lft = $this->categories->count() * 2 + 1;
				$category->rgt = $category->lft + 1;
			}
		} else { 
			switch($position)
			{
				case "before":
			        $category->lft = $targetCategory->lft;
			        $category->rgt = $category->lft + 1;
			        $this->incraseLftRgtAfterPosition($targetCategory->lft);			        
			        break;
			    case "after":
			        $category->lft = $targetCategory->rgt + 1;
			        $category->rgt = $category->lft + 1;
			        $this->incraseLftRgtAfterPosition($targetCategory->rgt + 1);
			        break;
				case "sub":
			        $category->lft = $targetCategory->lft + 1;
			        $category->rgt = $category->lft + 1;
			        $this->incraseLftRgtAfterPosition($targetCategory->rgt);
			        break;
			}
		}		
		
		$this->categories->push($category);

		if (!App::environment('testing')) {$this->saveAll();}
	}
	
	private function incraseLftRgtAfterPosition($pos)
	{
		foreach ($this->categories as $category)
		{
			if($category->lft >= $pos)
			{
				$category->lft += 2;
			}
			if($category->rgt >= $pos)
			{
				$category->rgt += 2;
			}
		}
	}
	
	public function removeCategory($id)
	{
		$cat_marked_for_delete = $this->findCategoryById($id);
		
		$deletedItems = 0;
		foreach ($this->categories as $key=>$category)
		{
			if($category->lft >= $cat_marked_for_delete->lft && $category->rgt <= $cat_marked_for_delete->rgt)
			{
				if (!App::environment('testing')) {
					Product::where('category_id', '=', $category->id)->update(array('category_id' => -1)); 
					$category->delete(); 
				}
					
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
	
	public function editCategory($id, $name, $description = null)
	{
		$category = $this->findCategoryById($id);
		$category->name = $name;
		if(isset($description))
		{
        	$category->description = $description;
		}
		$category->save();
	}
	
	public function isFirstCategory($category)
	{
		if(!isset($category))  { 
			return false; 
		}
		$neighbours = new Collection();
		$this->getLeftNeighbours($category, $neighbours);
		if(count($neighbours) > 0) {
			return false;
		} else return true;
	}
	
	public function isLastCategory($category)
	{
		if(!isset($category))  { 
			return false; 
		}
		$neighbours = new Collection();
		$this->getRightNeighbours($category, $neighbours);
		if(count($neighbours) > 0) {
			return false;
		} else return true;
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
	
	public function allCategories() {return $this->categories; } 
	
	private function numOfsubCategories($subCategories) {
		return 0;
	}
	
	public function reorder($orders) 
	{
		$index = 1;
		foreach($orders as $order) {
			$id = $order[0];
			$category = $this->findCategoryById($id);
		}
	}
}

?>