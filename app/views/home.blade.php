@extends('layouts.master')

@section('header')
	@parent    
	@include('includes/carousel')
@stop

@section('content')
	<h1 class="header1-title with-margin">		
		Nézzen körbe folyamatosan bővülő kínálatunkban!
	</h1>
	<div id="featured-products">
		@foreach ($featuredProducts as $product)
		<div class="product-item home-item">
			<div class="product-item-imageBorder">
				<a href="{{URL::action('info', array('id'=>$product->id))}}">
					<img class="product-item-image" src="{{$product->getFirstImage()}}"></img>
				</a>
			</div>
			<div class="product-item-info">
				<a href="{{URL::action('info', array('id'=>$product->id))}}">
					<p class="product-item-name">{{$product->name}}</p>
				</a>
				<a href="{{URL::action('info', array('id'=>$product->id))}}">
					<p class="product-item-price">{{$product->lowestPrice()}} Ft</p>
				</a>
				<a href="{{URL::action('info', array('id'=>$product->id))}}">
					<button type="button" class="details-link btn btn-success">Részletek</button>
				</a>
			</div>
		</div>
		@endforeach
	</div>
@stop