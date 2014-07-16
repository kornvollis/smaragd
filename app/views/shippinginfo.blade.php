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
<h3>Szállítási feltételek</h3>

// Emailes rendelés felvétel: telefonon lehet érdeklődni.

Szakértő ügyfélszolgálat ad tájékoztatást a termékekről!
A minőséget garantáljuk igyekezünk a legjobb ár érték arányt kiválasztani.
Rendelés módosítás, termékcsere, termék visszaküldése esetén intézkedünk!
Gyors szállítás a raktárkészlettől függően igyekszünk teljesíteni

Szállítási költségünk:

2500 Ft és 15.000 Ft közötti megrendelés esetén a szállítási költség 1390 Ft / cs
15.000 Ft és 30.000 Ft közötti megrendelés esetén a szállítási költség 990 Ft / cs
30.001 Ft és 39.000 Ft közötti megrendelés esetén a szállítási költség 690 Ft / cs
39.000 Ft feletti rendelés esetén INGYENESEN házhoz szállítjuk a csomagját!

MPL futárszolgálat szállítási súlyhatár 0-10kb

Kérjük, hogy megrendelésekor olyan szállítási címet adjon meg, ahol a  fenti időben folyamatosan biztosított a csomag átvételének lehetősége 8:00-17:00 - ig.

Postai szállítás esetén utánvétes fizetést kérünk!

Fenti díjak a 40kg-am felett nem érvényesek valamint a 2m-nél hosszabb termékekre, termékcsoportokra, 
illetve azokra a csomagokra ahol a csomagolási akadályok miatt a termékek nem csomagolhatóak egybe, ezek szállítási díját a
 megrendelést követő munkatársunk telefonon egyezteti Önnel.
 A br. 39.000 Ft feletti szállítást nem tudjuk átvállalni, külföldre történő szállítás esetén.
 
 Bármilyen probléma esetén érdeklődjön:  +36209-420-940 
 

<!--
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
-->
@stop