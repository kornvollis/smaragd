<?php

class AdminMenuTest extends TestCase 
{
	/* 
	(1 Root  
		(2  Sub1 3)  
		(4 Sub2  
			( 5 Sub2Sub1 6 )  
			( 7 Sub2Sub2 8 ) 
		9) 
	10) 
	(11 Root2 12) 
	(13 Root3 20)
	*/

	private $adminMenu;
	private $emptyAdminMenu;

	public function setUp()
	{
		parent::setUp();
	 
		$categories = Array();
		
		array_push($categories,  new Category(array("name" => "Root" ,     "lft" => 1, "rgt" => 10)));
        array_push($categories,  new Category(array("name" => "Sub1" ,     "lft" => 2, "rgt" => 3)));
        array_push($categories,  new Category(array("name" => "Sub2" ,     "lft" => 4, "rgt" => 9)));
        array_push($categories,  new Category(array("name" => "Sub2Sub1" , "lft" => 5, "rgt" => 6)));
        array_push($categories,  new Category(array("name" => "Sub2Sub2" , "lft" => 7, "rgt" => 8)));
        array_push($categories,  new Category(array("name" => "Root2" ,    "lft" => 11, "rgt" => 12)));
        array_push($categories,  new Category(array("name" => "Root3" ,    "lft" => 13, "rgt" => 20)));

		$this->adminMenu = new AdminMenu();
        $this->adminMenu->categories = $categories;
        $this->adminMenu->init();
	}
	
	public function testAdminMenuNotNull()
	{
		$this->assertTrue(isset($this->adminMenu));
	}
	
	public function testGetFirstChildCategories()
	{
		$childCategories = $this->adminMenu->getFirstChildCategories(1,10);
		
		$this->assertCount(2, $childCategories);
		$this->assertEquals("Sub1", $childCategories[0]->name);
		$this->assertEquals("Sub2", $childCategories[1]->name);
	}
	
	public function testGetRootCategories()
	{
		$rootCategories = $this->adminMenu->getRootCategories();
		
		$this->assertCount(3, $rootCategories);
	}	
	
	public function testAddCategoryToEnd()
	{
		$category = new Category();
		$category->name = "new cat";
		$category->id = 5000;

		$size_before = $this->adminMenu->size();
		$this->adminMenu->addCategoryToEnd($category);
		$size_after = $this->adminMenu->size();
		$this->assertEquals($size_before + 1, $size_after);
		$this->assertEquals("new cat", $this->adminMenu->lastCategory->name);
		$this->assertEquals(21, $this->adminMenu->lastCategory->lft);
		$this->assertEquals(22, $this->adminMenu->lastCategory->rgt);
        $category->forceDelete();

        Category::find(5000)->delete();
	}
}