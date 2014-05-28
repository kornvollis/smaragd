@extends('layouts.master')

@section('header')
	@parent    
	@include('includes/carousel')
@stop

@section('content')
	<h1 class="featuredProducts-header">		
		Kiemelt ajánlatok
	</h1>
	<div id="featured-products">
		@foreach ($featuredProducts as $product)
		<a class="product-link" href="{{URL::route('info', array('id' => $product->id))}}">
			<div class="product">
				<div class="product-imageBorder">
					<img class="product-image" src="{{$product->getFirstImage()}}"></img>
				</div>
				<h1>{{$product->name}}</h1>
				<p class="price">{{$product->lowestPrice()}} Ft</p>
			</div>
		</a>
		@endforeach
	</div>
@stop