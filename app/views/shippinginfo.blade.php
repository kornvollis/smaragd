@extends('layouts.master')

@section('content')
<style>
#shipping {
	margin-left: auto;
	margin-right: auto;
}

#shipping h3 {
	text-align: center;
	margin-bottom: 30px;
	color: #009421;
}

#shipping h4 {
	/*text-align: center;*/
	margin-bottom: 12px;
	margin-left: 235px;
}

.table {
	width: 500px;
	margin-left: 235px;
}
</style>

<div id="shipping">
<h3>Szállítási partnerünk az MPL futárszolgálat. </h3>

<h4>Szállítási díjak:</h4>

	<table class="table">
		<tr><th>Tömeg</th><th>Bruttó szállítási díj</th></tr>
		<tr><td>0 - 5 kg</td><td>985.- Ft</td></tr>
		<tr><td>5 - 10 kg</td><td>1.495.- Ft</td></tr>
		<tr><td>10 - 20 kg</td><td>1.660.- Ft</td></tr>
		<tr><td>20 - 30 kg</td><td>1.795.- Ft</td></tr>
		<tr><td>30 - 60 kg</td><td>3.200.- Ft</td></tr>
		<tr><td>60 - 100 kg</td><td>5.490.- Ft</td></tr>
		<tr><td>100 - 200 kg</td><td>6.760.- Ft</td></tr>
		<tr><td>200 - 300 kg</td><td>7.890.- Ft</td></tr>
		<tr><td>300 - 400 kg</td><td>9.120.- Ft</td></tr>
		<tr><td>400 - 500 kg</td><td>10.250.- Ft</td></tr>
		<tr><td>500 - 1000 kg</td><td>13.100.- Ft</td></tr>
	</table>
</div>
@stop