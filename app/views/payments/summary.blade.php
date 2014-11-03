@extends('layouts.master')

@section('content')

<div id="payment">

@include('payments.header')

<div>
	<p style="font-size: 12px; padding-top: 10px;">Az ön kosarának tartalma <span style="font-weight: bold;" class="summary_products_quantity">3 Termék</span></p>

	<table id="cart_summary" style="width: 100%;">
		<colgroup>
			<col width="1">
			<col width="1">
			<col width="1">
			<col width="1">
			<col width="1">
		</colgroup>
		<thead>
			<tr>
				<th class="cart_product first_item">&nbsp;</th>
				<th class="cart_description item">Leírás</th>
				<th class="cart_unit item">Egységár</th>
				<th class="cart_quantity item">Mennyiség</th>
				<th class="cart_total item">Összesen</th>
			</tr>
		</thead>

		<tbody>
		    @foreach (SCart::getItems() as $cartItem)
			<tr class="last_item  cart_item address_0 even">
				<td class="cart_product">
					<img src="{{$cartItem->image()}}" style="width:60px;">
				</td>
				<td class="cart_description" style="width: 500px; text-align: left;">
					<h5>{{$cartItem->name()}}</h5>
				</td>
				<td class="cart_unit">
					<span class="price">{{$cartItem->price()}} Ft&lrm;</span>
				</td>
				<td class="cart_quantity">{{$cartItem->quantity}}</td>
				<td class="cart_total">
					<span class="price" id="total_product_price_710016_0_0">{{$cartItem->sumPrice()}} Ft&lrm;</span>
				</td>
			</tr>
			@endforeach
		</tbody>


		<tfoot>
			<tr class="cart_total_price">
				<td colspan="4" style="text-align: left;">Összesen</td>
				<td colspan="2" class="price" id="total_product" style="text-align: right;">{{SCart::sumPrice()}} Ft</td>
			</tr>
			<tr class="cart_total_delivery">
				<td colspan="4" style="text-align: left;">Összes szállítás</td>
				<td colspan="2" class="price" id="total_shipping" style="text-align: right;">{{SCart::shippingCost()}} Ft</td>
			</tr>
			<tr class="cart_total_price grand_total">
				<td colspan="4" id="cart_voucher" class="cart_voucher"></td>
				<td colspan="2" class="price total_price_container" id="total_price_container">
					<p>Végösszeg</p>
					<span id="total_price">{{SCart::sumPrice() + SCart::shippingCost()}} Ft</span>
				</td>
			</tr>
		</tfoot>

	</table>

	<h3 class="title">Fizetési mód</h3>

	<p class="payment_module">
		<div style="display:inline-block">
			<img style="width: 130px;" src="{{URL::asset('images/payment/szallitas.jpg')}}" />
			<p style="font-weight: bold; font-size: 12px; padding: 10px;">Utánvételes fizetés</p>
		</div>
		<a href="{{URL::action('PaymentsController@orderSuccess')}}" style="margin-top: 35px; float: right;" class="smaragd-button">A termék átvételekor fizetek, megrendelem!</a>
    </p>

	<div class="cart_navigation">
		<a href="{{URL::action('order', array('step' => 4))}}" class="smaragd-button" title="Tovább">vissza</a>
	</div>
</div>

@stop