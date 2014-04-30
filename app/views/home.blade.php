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
		<a href="/smaragd/products/info/">
			<div style="display: inline-block;" class="featuredProducts-item">
				<div class="featuredProducts-imageholder" >
					<img style="max-width: 218px; max-height: 218px;" class="featuredProducts-image" src="{{$product->getFirstImage()}}"></img>
				</div>
				<p class="featuredProducts-name"> {{$product->name}} </p>
				<p class="featuredProducts-price"> {{ $product->price }} Ft </p>
			</div>
		</a>
		@endforeach
	</div>
@stop