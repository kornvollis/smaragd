@extends('layouts.master')

@section('header')
	@parent    
	@include('includes/carousel')
@stop

@section('content')
	<h1 class="header1-title with-margin">		
		KIEMELT AJÁNLATAINK!
	</h1>
	
	<div id="featured-products-wells">
		@foreach ($wells as $well)
			@include('includes.product_item', array('product'=>$well))
		@endforeach
	</div>
	
	<h1 class="header1-title with-margin">		
		NÉZZEN KÖRBE FOLYAMATOSAN BŐVÜLŐ KÍNÁLATUNKBAN!
	</h1>
	
	<div id="featured-products">
		@foreach ($featuredProducts as $product)
			@include('includes.product_item', array('product'=>$product))
		@endforeach
	</div>
@stop