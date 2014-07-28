@extends('layouts.master')

@section('content')

<h1 class="header1-title with-margin">Keresési találatok: {{count($products)}} db</h1>

<table  class="inventory-items table">
@foreach ($products as $product)
	@include('includes.product_item', array('product'=>$product))
@endforeach
</table>
@stop