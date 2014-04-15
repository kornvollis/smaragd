@extends('layouts.master')

@section('content')



<div class="a-col">
	@include('includes/leftmenu')
</div>
<div class="b-col">
	@foreach ($products as $product)
		<a class="product-link" href="{{URL::route('info', array('id' => $product->id))}}">
			<div class="product">
				<div class="product-imageBorder">
					<img class="product-image" src="{{$product->getFirstImage()}}"></img>
				</div>
				<h1>{{$product->name}}</h1>
				<p class="price">{{$product->price}} Ft</p>
			</div>
		</a>
	@endforeach
</div>


@stop