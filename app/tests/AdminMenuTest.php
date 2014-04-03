<?php

use Illuminate\Support\Collection;

class AdminMenuTest extends TestCase 
{
	/* 
	(1 Root  
		(2  Sub1 3)  
		(4 Sub2               665
			( 5 Sub2Sub1 6 )  666
			( 7 Sub2Sub2 8 )  667
		9) 
	10) 
	(11 Root2 12) 
	(13 Root3 14)
	*/

	private $adminMenu;
	private $emptyAdminMenu;

	public function setUp()
	{
		parent::setUp();
	 
		$categories = new Collection();
		/*
		array_push($categories,  new Category(array("name" => "Root" ,     "lft" => 1, "rgt" => 10)));
        array_push($categories,  new Category(array("name" => "Sub1" ,     "lft" => 2, "rgt" => 3)));
        array_push($categories,  new Category(array("name" => "Sub2" ,     "lft" => 4, "rgt" => 9, "id" => 665)));
        array_push($categories,  new Category(array("name" => "Sub2Sub1" , "lft" => 5, "rgt" => 6, "id" => 666)));
        array_push($categories,  new Category(array("name" => "Sub2Sub2" , "lft" => 7, "rgt" => 8, "id" => 667)));
        array_push($categories,  new Category(array("name" => "Root2" ,    "lft" => 11, "rgt" => 12)));
        array_push($categories,  new Category(array("name" => "Root3" ,    "lft" => 13, "rgt" => 14)));
		*/
		$categories->push(new Category(array("name" => "Root" ,     "lft" => 1, "rgt" => 10, "id" => 1)));
        $categories->push(new Category(array("name" => "Sub1" ,     "lft" => 2, "rgt" => 3)));
        $categories->push(new Category(array("name" => "Sub2" ,     "lft" => 4, "rgt" => 9, "id" => 665)));
        $categories->push(new Category(array("name" => "Sub2Sub1" , "lft" => 5, "rgt" => 6, "id" => 666)));
        $categories->push(new Category(array("name" => "Sub2Sub2" , "lft" => 7, "rgt" => 8, "id" => 667)));
        $categories->push(new Category(array("name" => "Root2" ,    "lft" => 11, "rgt" => 12)));
        $categories->push(new Category(array("name" => "Root3" ,    "lft" => 13, "rgt" => 14)));
		
		
		$this->adminMenu = new AdminMenu();
        $this->adminMenu->categories = $categories;
	}
	
	public function testAdminMenuNotNull()
	{
		$this->assertTrue(isset($this->adminMenu));
	}
	
	public function testGetAllChildCategories()
	{
		$parent = $this->adminMenu->findCategoryByLft(1);
		$childCategories = $this->adminMenu->getAllChildren($parent);
		
		$this->assertCount(4, $childCategories);
	}
	
	public function testGetFirstChildCategories()
	{
		$parent = $this->adminMenu->findCategoryByLft(1);
		$childCategories = $this->adminMenu->getFirstChildCategories($parent);
		
		$this->assertCount(2, $childCategories);
		$this->assertEquals("Sub1", $childCategories[0]->name);
		$this->assertEquals("Sub2", $childCategories[1]->name);
	}
	
	public function getSelectArray() 
	{
		$result  = $this->adminMenu->selectArray();
		$this->assertTrue(isset($result));
	}
	
	public function testGetRootCategories()
	{
		$rootCategories = $this->adminMenu->getRootCategories();
		$this->assertCount(3, $rootCategories);
	}	
	
	public function testFindCategoryByLft() 
	{
		$cat = $this->adminMenu->findCategoryByLft(5);
		$this->assertEquals("Sub2Sub1", $cat->name);
	}
	
	public function testFindCategoryByRgt() 
	{
		$cat = $this->adminMenu->findCategoryByRgt(6);
		$this->assertEquals("Sub2Sub1", $cat->name);
	}
	
	public function testFindCategoryById() 
	{
		$cat = $this->adminMenu->findCategoryById(666);
		$this->assertEquals("Sub2Sub1", $cat->name);
	}
	
	public function testAddCategory() {
		$newCategory = new Category(array('name' => 'xxx'));
		
		$this->adminMenu->addCategory($newCategory, $this->adminMenu->findCategoryByLft(11) );
		
		$this->assertEquals(12, $newCategory->lft);
		$this->assertEquals(13, $newCategory->rgt);
	}
	
	public function testRemoveCategory() {
		$remove_id = 666;		
		$this->adminMenu->removeCategory($remove_id);
		$this->assertTrue($this->adminMenu->findCategoryById($remove_id) == null);
		
		// 665
		$this->assertTrue($this->adminMenu->findCategoryById(665) != null);
		$this->assertEquals(4, $this->adminMenu->findCategoryById(665)->lft);
		$this->assertEquals(7, $this->adminMenu->findCategoryById(665)->rgt);
		// 667
		$this->assertEquals(5, $this->adminMenu->findCategoryById(667)->lft);
		$this->assertEquals(6, $this->adminMenu->findCategoryById(667)->rgt);
		
		$this->assertEquals(6, $this->adminMenu->categories->count());
	}
	
	public function testRemoveCategoryWithSeverealChildCategory() {
		
		$this->adminMenu->removeCategory(1);
		$this->assertEquals(2, $this->adminMenu->categories->count());
	}
	
	public function testAddWithoutParentCategory() {
		$newCategory = new Category(array('name' => 'xxx'));
		
		$this->adminMenu->addCategory($newCategory);
		
		$this->assertEquals(15, $newCategory->lft);
		$this->assertEquals(16, $newCategory->rgt);
	}
}