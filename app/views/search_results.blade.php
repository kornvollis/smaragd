@extends('layouts.master')

@section('content')

<h1>Keresési találatok: </h1>

<table  class="inventory-items table">
@foreach ($products as $product)
	<tr style="cursor:pointer" onclick="document.location = '{{URL::action('MainController@info', array('id' => $product->id))}}';">
		<td><img style="width: 50px;" src="{{$product->getFirstImage()}}" /></td>
		<td>{{ $product->name}}</td>
		<td class="price">{{$product->lowestPrice() }} Ft</td>
	</tr>
@endforeach
</table>
@stop