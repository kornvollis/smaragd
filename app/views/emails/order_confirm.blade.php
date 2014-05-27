<h1>Köszönjük a vásrálást</h1>
 <p>Hamarosan felveszük Önnel a kapcsolatot</p>
 
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
 
 <p>Bármilyen kérdése van forduljon hozzánk bizalommal! www.smaragdut.hu</p>