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
		@if(count($product->images) > 1)
			<div id="thumbnails">
			@foreach ($product->images as $image)
				<div><img class="productInfo-small-img" src="{{ URL::asset('images/p') }}/{{$image->path}}" /></div>
			@endforeach
			</div>
		@endif
	</div>
	
	
	<div class="productInfo">
		<h1>{{ $product->name }}</h1>
		@if ($product->hasOptions())
			<div id="description">{{ $product->options->first()->description }}</div>
			<h2 id="price">{{ $product->displayedPrice($product->options->first()->id) }} Ft</h2>
		@else
			<div id="description">{{ $product->description }}</div>
			<h2 id="price">{{ $product->displayedPrice() }} Ft</h2>
		@endif
		
		<form role="form" action="{{URL::route('cart-add', array('id' => $product->id))}}" method="post">
			@if ($product->hasOptions())
				<select name="option" id="options" name="option">
				@foreach($product->options as $option)
					<option value="{{$option->id}}" data-price="{{$product->displayedPrice($option->id)}}" data-description="{{$option->description}}">{{$option->description}}</option>
				@endforeach
				</select>
				<br><br>
			@endif
			<input id="quantity" style="width: 87px;" onkeypress="validate(event)" type="number" name="qty" value="1"  min="1" />
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

$("#options").on("change", function(e) {
	var option = $('#options').find(":selected");
	$("#price").html(option.data("price") + " Ft");
	$("#description").html(option.data("description"));
});

function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}
</script>
@stop