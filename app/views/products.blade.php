@extends('layouts.master')

@section('content')

<div class="a-col">
	@include('includes/leftmenu')
</div>
<div class="b-col">
	
	<h1 style="font-size: 22px; margin-left: 54px;color: grey;" >Termékek / {{$category->name}}</h1>
	
	@foreach ($products as $product)
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