<?php

class AdminMenuTest extends TestCase 
{
	/* (1 Root  
					(2  Sub1 3)  
					 (4 Sub2  
							( 5 Sub2Sub1 6 )  
							( 7 Sub2Sub2 8 ) 
					9) 
		10 ) 
		(11 Root2 12) 
		(13 Root3 20)
	*/

	private $adminMenu;

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
	}
	
	public function testAdminMenuNotNull()
	{
		$this->assertTrue(isset($this->adminMenu));
	}
	
	public function testGetFirstChildCategories()
	{
		$childCategories = $this->adminMenu->getFirstChildCategories(1,10);
		
		$this->assertCount(2, $childCategories);
	}
	
	public function testGetRootCategories()
	{
		$rootCategories = $this->adminMenu->getRootCategories();
		
		$this->assertCount(3, $rootCategories);
	}	

}