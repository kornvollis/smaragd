<h1>A vásárló adatai</h1>
    	
 <table>
 	<tr>
 		<th>Név</th>
 		<th>Email</th>
 		<th>Telefon</th>
 		<th>Cím</th>
 	</tr>
 	<tr>
 		<td>{{$user->lastName}} {{$user->firstName}}</td>
 		<td>{{$user->email}}</td>
 		<td>{{$user->phone}}</td>
 		<td>{{$user->shippingAddress->toString()}}</td>
 	</tr>
 </table>
 
 <h1>Vásárolt termékek</h1>
    	
 <table>
 	<tr>
 		<th>Termék név</th>
 		<th>Darab</th>
 		<th>Ár</th>
 	</tr>
 	@foreach($cartItems as $item)
 	<tr>
 		<td>{{$item->name()}}</td>
 		<td>{{$item->quantity}}</td>
 		<td>{{$item->sumPrice()}}</td>
 	</tr>
 	@endforeach
 </table>