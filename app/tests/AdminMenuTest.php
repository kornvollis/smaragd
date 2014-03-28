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
		
		array_push($categories,  new Category("Root", 1, 10));
		array_push($categories,  new Category("Sub1", 2, 3));
		array_push($categories,  new Category("Sub2", 4, 9));
		array_push($categories,  new Category("Sub2Sub1", 5,  6));
		array_push($categories,  new Category("Sub2Sub2", 7, 8));
		array_push($categories,  new Category("Root2", 11, 12));
		array_push($categories,  new Category("Root3", 13, 20));

		$this->adminMenu = new AdminMenu($categories);
		$this->emptyAdminMenu = new AdminMenu(Array());
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
		
		/* EMPTY MENU */
		$this->emptyAdminMenu->addCategoryToEnd($category);
		$this->assertEquals(1, $this->emptyAdminMenu->size());
		$this->assertEquals("new cat", $this->emptyAdminMenu->lastCategory->name);
		$this->assertEquals(1, $this->emptyAdminMenu->lastCategory->lft);
		$this->assertEquals(2, $this->emptyAdminMenu->lastCategory->rgt);
	}
}