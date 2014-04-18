@extends('layouts.master')

@section('header')
	@parent    
	@include('includes/carousel')
@stop

@section('content')
	<div id="featured-products">asd
		@foreach ($featuredProducts as $product)
		<a href="/smaragd/products/info/">
			<div style="display: inline-block;" class="featuredProducts-item">
				<div class="featuredProducts-header">		
					Kiemelt ajánlat
				</div>
				<div class="featuredProducts-imageholder" >
					<img style="max-width: 218px; max-height: 218px;" class="featuredProducts-image" src="{{$product->getFirstImage()}}"></img>
				</div>
				<h1> {{$product->name}} </h1>
				<p class="featuredProducts-price"> {{ $product->price }} Ft </p>
			</div>
		</a>
		@endforeach
	</div>
@stop