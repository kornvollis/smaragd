@extends('layouts.master')

@section('content')

@include('includes/bread_crumbs', array('breadCrumbs' => $breadCrumbs))

<div class="a-col">
    @include('includes/navigation')
    @include('includes/cart_info')
</div>

<div class="b-col products-margin">	
	@foreach ($products as $product)
		@include('includes.product_item', array('product'=>$product))
	@endforeach
</div>


@stop