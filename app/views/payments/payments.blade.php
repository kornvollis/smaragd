@extends('layouts.master')

@section('content')
<div id="cashier">
	<h1>Megrendelés regisztráció nélkül</h1>
	
	<form id="buyForm" role="form" action="{{ URL::route('order') }}" method="post" enctype="multipart/form-data">
	    <div class="form-group">
		    <label>Vezeték név</label>
		    <input type="text" name="lastname" class="form-control" placeholder="..." required>
		</div>
		
		<div class="form-group">
		    <label>Kereszt név</label>
		    <input type="text" name="firstname" class="form-control" placeholder="..." required>
		</div>
		
		<div class="form-group">
		    <label>Email cím</label>
		    <input type="email" name="email" class="form-control" placeholder="vasarlo@gmail.com" required>
		</div>
		
		<div class="form-group">
		    <label>Telefonszám</label>
		    <input type="text" name="phone" class="form-control" placeholder="0630 999 99 99" required>
		</div>
		
		<div class="form-group">
		    <label for="productDescription">Cím</label>
		    <textarea name="address" class="form-control" rows="3" placeholder="..." required></textarea>
		</div>
	
		<input name="id" style="display:none">
	        <button type="submit" class="btn btn-success" >Megrendelem!</button>
	</form>
	
	<div class="table-wrapper">
	<table class="table">
		<tr>
			<th>Termék neve</th>
			<th>Darab ára</th>
			<th>Összesen</th>
			<th>Darab</th>
		</tr>

		@foreach (SCart::getItems() as $cartItem)
		<tr>
			<td> {{ $cartItem->name }}</td>
			<td> {{ $cartItem->price }} </td>
			<td> {{ $cartItem->sumPrice() }} </td>
			<td> {{ $cartItem->quantity }} </td>
		</tr>
		@endforeach
	</table>
	</div>
</div>
@stop