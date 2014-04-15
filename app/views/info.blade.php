@extends('layouts.master')

@section('content')
<div class="a-col">
	@include('includes/leftmenu')
</div>

<div class="b-col">
	<div class="productInfoImageContainer">
		<div class="vertical-middle">
			<img class="productInfo-img" src="{{ $product->getFirstImage() }}" />
		</div>
		<div id="thumbnails">
		@foreach ($product->images as $image)
			<div><img class="productInfo-small-img" src="{{ URL::asset('images/p') }}/{{$image->path}}" /></div>
		@endforeach
		</div>
	</div>
	
	
	<div class="productInfo">
		<h1>{{ $product->name }}</h1>
		<div>{{ $product->description }}</div>
		<h2>{{ $product->price }}</h2>
		<form role="form" action="cart/add" method="post">
			<input id="quantity" style="width: 87px;" type="number" name="qty" value="1"  min="1" />
			<input type="id" name="id" style="display: none;" value="{{ $product->id }}" />
			<br><br><button type="submit" class="btn btn-success">Kosárba rak<span style="margin-left: 11px;" class="glyphicon glyphicon-shopping-cart"></span></button>
		</form>
	</div>
</div>
@stop

@section('end')
<script>
$("#thumbnails img").on("click", function(e) {
	$(".productInfo-img").attr("src", e.currentTarget.src);
});
</script>
@stop