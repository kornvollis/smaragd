@extends('layouts.master')

@section('content')
<div id="cart_info">
	<h1> Az ön kosara az alábbi terméket tartalmazza! </h1>

	<table class="table">
	<tr>
		<th>Termék neve</th>
		<th>Darab ára</th>
		<th>Összesen</th>
		<th>Darab</th>
		<th>Műveletek</th>
	</tr>
	@foreach (SCart::getItems() as $cartItem)
		<tr>
			<td> {{ $cartItem->name() }}</td>
			<td class="price"> {{ $cartItem->price() }}</td>
			<td class="sum-price"> {{ $cartItem->sumPrice() }}</td>
			<td> <input class="qty" style="width: 60px;" type="number" min="1" onkeypress="validate(event)" value="{{ $cartItem->quantity }}"> </td>
			<td> <a class="remove-cart-item" href="{{ URL::route('cart-remove', array('product_id' => $cartItem->product_id, 'option_id' => $cartItem->option_id )) }}">Törlés</a> 
				 <a class="edit-cart-item hidden" data-productid="{{$cartItem->product_id}}" data-optionid="{{$cartItem->option_id}}">Módosít</a>
			</td>
			
		</tr>
	@endforeach
	</table>
	
	<a href="{{ URL::route('cart-remove-all') }}"> Összes termék törlése </a>
	<h2>A teljes összeg: <span id="full-price">{{ SCart::sumPrice() }}</span> Ft</h2>
	<br/>
	<a href="{{ URL::route('payments') }}">
		<button class="btn btn-success" > Tovább a pénztárhoz </button>
	</a>
</div>

<script>
$(".qty").on("change", function(e) {
	$(e.currentTarget).parent().parent().find(".edit-cart-item").removeClass("hidden");
	$(e.currentTarget).parent().parent().find(".remove-cart-item").addClass("hidden");
});

$(".edit-cart-item").on("click", function(e) {
	var params = {};

	var sumPriceField = $(e.currentTarget).parent().parent().find(".sum-price");
	
	params.product_id = $(e.currentTarget).data("productid");
	params.option_id = $(e.currentTarget).data("optionid");
	params.qty = $(e.currentTarget).parent().parent().find(".qty").val();
		
	$.post( "{{ URL::action('CartController@updateItem') }}", params)
	.done(function( data ) {
		var obj = jQuery.parseJSON( data );
		$(sumPriceField).html(obj.itemPrice);
		
		$("#full-price").html(obj.sumPrice);
		$(e.currentTarget).parent().parent().find(".edit-cart-item").addClass("hidden");
		$(e.currentTarget).parent().parent().find(".remove-cart-item").removeClass("hidden");
  	});	
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