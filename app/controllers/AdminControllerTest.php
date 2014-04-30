<?php

class AdminControllerTest extends TestCase 
{
	public function setUp() 
	{
	    parent::setUp();
	    $this->productMock  = Mockery::mock('Eloquent', 'Product');
	    $this->categoryMock = Mockery::mock('Eloquent', 'Category');
	}
	
	public function tearDown()
	{
	    Mockery::close();
	}
	
	public function testShowWithoutID() {
		$this->productMock
			 ->shouldReceive('all')
			 ->once()
			 ->andReturn(array());
			 
		$this->app->instance('Product', $this->productMock);
		
		$this->call('GET', '/admin');
		$this->assertViewHas('products');
    }
	
}