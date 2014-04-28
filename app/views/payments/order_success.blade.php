@extends('layouts.master')

@section('content')
<img style="vertical-align: top;" src="{{ URL::asset('images/order_success.jpg') }}"></img>

<div id="success-order">
	<h1>Gratuláunk!</h1>
	<h2>A rendelés sikeres volt. Hamarosan felvesszük Önnel a kapcsolatot!</h2>
	<h3>Kérjük, hogy látogasson vissza és kövesse figyelemmel a megújuló kínalatunkat.</h3>
</div>
@stop