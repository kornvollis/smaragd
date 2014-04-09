@extends('layouts.master')

@section('content')



<div class="a-col">
	<div id="leftMenu">
		<ol>
			@foreach (Menu::allCategories() as $category)
				<li>{{$category->name}}</li>
			@endforeach
		</ol>
	</div>
</div>
<div class="b-col">
	<?php //echo $bread_crumbs; ?>
	@foreach ($products as $product)
		<a class="product-link" href="/smaragd/products/info/{{$product->id}}">
		<div class="product">
			<div class="product-imageBorder">
				<img class="product-image" src="{{$product->getFirstImage()}}"></img>
			</div>
			<h1>{{$product->name}}</h1>
			<p class="price">{{$product->price}} Ft</p>
		</div>
	@endforeach
	
</div>


@stop