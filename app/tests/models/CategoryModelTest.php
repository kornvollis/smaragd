<?php

class CategoryModelTest extends TestCase 
{
	private $category_no_child;
	private $category_has_child;
	
	public function setUp()
	{
		parent::setUp();
	 
		$this->category_no_child =  new Category(array("name" => "My cat" , "lft" => 1, "rgt" => 2));
        $this->category_has_child =  new Category(array("name" => "My cat with childt" , "lft" => 1, "rgt" => 4));
	}
	
	public function testHasChild() 
	{
		$this->assertFalse($this->category_no_child->hasChild());
		$this->assertTrue($this->category_has_child->hasChild());
	}
}