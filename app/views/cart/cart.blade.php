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
	@foreach (SCart::getAll() as $cartItem)
		<tr>
			<td> {{ $cartItem->getProduct()->name }}</td>
			<td> {{ $cartItem->getProduct()->price }} </td>
			<td> {{ $cartItem->sumPrice() }} </td>
			<td> <input class="qty" style="width: 60px;" type="number" min="1" onkeypress="validate(event)" value="{{ $cartItem->getQuantity() }}"> </td>
			<td> <a href="{{ URL::route('cart-remove', array('id' => $cartItem->getProduct()->id )) }}">Törlés</a> </td>
		</tr>
	@endforeach
	</table>
	
	<a href="{{ URL::route('cart-remove-all') }}"> Összes termék törlése </a>
	<h2>A teljes összeg: <?php //echo $this->cart->total(); ?> Ft</h2>
	<br/>
	<a href="{{ URL::route('payments') }}">
		<button class="btn btn-success" > Tovább a pénztárhoz </button>
	</a>
</div>

<script>
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