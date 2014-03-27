<?php

class TestCase extends Illuminate\Foundation\Testing\TestCase {

	/**
	 * Creates the application.
	 *
	 * @return \Symfony\Component\HttpKernel\HttpKernelInterface
	 */
	public function createApplication()
	{
		$unitTesting = true;

		$testEnvironment = 'testing';

		return require __DIR__.'/../../bootstrap/start.php';
	}
	
	/**
	 * Default preparation for each test
	 *
	 */
	public function setUp()
	{
		parent::setUp(); // Don't forget this!
	 
		$this->prepareForTests();
	}
	
	private function prepareForTests()
	{
		Artisan::call('migrate');
		Mail::pretend(true);
	}
}
