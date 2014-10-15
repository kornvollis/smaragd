@extends('layouts.master')

@section('content')

<div id="payment">

<ul class="step group" id="order_step">
	<li id="step-bar-1" class="@if ($step == 1)step_current  @else step_done @endif">
		@if ($step == 1)
			<span>1. Vásárlás összesítés</span>
		@else 
			<a href="{{URL::route('order', array('step' => 1))}}">1. Vásárlás összesítés</a>
		@endif
	</li>
	<li id="step-bar-2" class="@if ($step == 2)step_current  @elseif ($step < 2) step_todo @else step_done @endif">
		@if ($step > 2)
			<span>2. Adatok megadása</span>
		@else 
			<a href="{{URL::route('order', array('step' => 2))}}">2. Adatok megadása</a>
		@endif
	</li>
	<li id="step-bar-3" class="@if ($step == 3)step_current  @elseif ($step < 3) step_todo @else step_done @endif" style="width: 244px;">
		@if ($step > 3)
			<span>3. Szállítási/Számlázási adatok</span>
		@else 
			<a href="{{URL::route('order', array('step' => 3))}}">3. Szállítási/Számlázási adatok</a>
		@endif
	</li>
	<li id="step-bar-4" class="@if ($step == 4)step_current  @elseif ($step < 4) step_todo @else step_done @endif">
		@if ($step > 4)
			<span>4. Szállítás</span>
		@else 
			<a href="{{URL::route('order', array('step' => 4))}}">4. Szállítás</a>
		@endif
	</li>
	<li id="step-bar-5" class="@if ($step == 5)step_current  @else step_todo @endif">
		<span>5. Fizetés</span>
	</li>
</ul>

<div id="step-1" style="display:@if($step == 1)block; @else none; @endif" >
	<p style="font-size: 12px; padding-top: 10px;">Az ön kosarának tartalma <span style="font-weight: bold;" class="summary_products_quantity">3 Termék</span></p>

	<table id="cart_summary">
		<colgroup>
			<col width="1">
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
				<th class="cart_delete last_item">&nbsp;</th>
			</tr>
		</thead>

		<tbody>
			<tr id="product_710016_0_0_0"
				class="last_item  cart_item address_0 even">
				<td class="cart_product"><a
					href="http://webshop.idokep.hu/home/710016-conrad-kulteri-napelemes-ultrahangos-kartev-kutya-macska-es-vadriaszto-mozgaserzekelvel-25-m.html"><img
						src="http://webshop.idokep.hu/30668-medium_default/conrad-kulteri-napelemes-ultrahangos-kartev-kutya-macska-es-vadriaszto-mozgaserzekelvel-25-m.jpg"
						alt="Conrad kültéri napelemes ultrahangos kártevő-, kutya-, macska- és vadriasztó mozgásérzékelővel, 25 m²">
				</a>
				</td>
				<td class="cart_description">
					<h5>
						<a
							href="http://webshop.idokep.hu/home/710016-conrad-kulteri-napelemes-ultrahangos-kartev-kutya-macska-es-vadriaszto-mozgaserzekelvel-25-m.html">Conrad
							kültéri napelemes ultrahangos kártevő-, kutya-, macska- és
							vadriasztó mozgásérzékelővel, 25 m²</a>
					</h5>
				</td>
				<td class="cart_unit">
					<span class="price" id="product_price_710016_0_0"> 13 990 Ft&lrm; </span>
				</td>
				<td class="cart_quantity">
					<input class="qty" style="width: 60px;" type="number" min="1" onkeypress="validate(event)" value="1">
				</td>
				<td class="cart_total">
					<span class="price" id="total_product_price_710016_0_0"> 27 980
						Ft&lrm; </span>
				</td>
				<td class="cart_delete">
					<div>
						<a class="delete_button" id="" href="#">Törlöm a terméket</a>
					</div>
				</td>
			</tr>
		</tbody>


		<tfoot>
			<tr class="cart_total_price">
				<td colspan="4" style="text-align: left;">Összesen</td>
				<td colspan="2" class="price" id="total_product" style="text-align: right;">36 970 Ft&lrm;</td>
			</tr>
			<tr class="cart_total_delivery">
				<td colspan="4" style="text-align: left;">Összes szállítás</td>
				<td colspan="2" class="price" id="total_shipping" style="text-align: right;">1 100 Ft&lrm;</td>
			</tr>
			<tr class="cart_total_price grand_total">
				<td colspan="4" id="cart_voucher" class="cart_voucher"></td>
				<td colspan="2" class="price total_price_container" id="total_price_container">
					<p>Végösszeg</p> 
					<span id="total_price">38 070 Ft&lrm;</span>
				</td>
			</tr>
		</tfoot>

	</table>
	<div class="cart_navigation">
		<a href="/" class="autumn-button continue-shopping" title="Vásárlás folytatása">« Vásárlás folytatása</a>
		<a href="{{URL::route('order', array('step' => 2))}}" class="exclusive standard-checkout order-button" title="Tovább" onClick="showStep2();">Tovább »</a>
	</div>
</div>



<div id="step-2" style="display:@if($step == 2)block; @else none; @endif" >
	<form
		action="http://webshop.idokep.hu/authentication?back=http%3A%2F%2Fwebshop.idokep.hu%2Forder%3Fstep%3D1&amp;multi-shipping=0"
		method="post" id="new_account_form" class="std clearfix">
		<fieldset>
			<h3 class="title">Vendég vásárlás</h3>
			<div id="opc_account_form" style="display: block;">
				<!-- Account -->
				<p class="required text">
					<label for="guest_email">Add meg az E-mail címed! <sup>*</sup> </label>
					<input type="text" class="text light" id="guest_email"
						name="guest_email" value=""
						style="cursor: auto; background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=);">
				</p>
				<p class="required text">
					<label for="firstname">Keresztnév <sup>*</sup> </label> <input
						type="text" class="text light" id="firstname" name="firstname"
						onblur="$('#customer_firstname').val($(this).val());" value=""> <input
						type="hidden" class="text" id="customer_firstname"
						name="customer_firstname" value="">
				</p>
				<p class="required text">
					<label for="lastname">Vezetéknév <sup>*</sup> </label> <input
						type="text" class="text light" id="lastname" name="lastname"
						onblur="$('#customer_lastname').val($(this).val());" value=""> <input
						type="hidden" class="text" id="customer_lastname"
						name="customer_lastname" value="">
				</p>
				
				<h4 class="subtitle">Szállítási cím megadása</h4>
				<p class="text extra_top_space">
					<label for="company">Cégnév (amennyiben szükséges)</label> <input
						type="text" class="text light" id="company" name="company" value="">
				</p>
				<div id="vat_number" style="display: none;">
					<p class="text">
						<label for="vat_number">Adószám (nem kötelező)</label> <input
							type="text" class="text" name="vat_number" value="">
					</p>
				</div>
				<p class="required text">
					<label for="address1">Utca, házszám <sup>*</sup> </label> <input
						type="text" class="text light" name="address1" id="address1"
						value="">
				</p>
				<p class="required postcode text">
					<label for="postcode">Irányítószám <sup>*</sup> </label> <input
						type="text" class="text light" name="postcode" id="postcode"
						value=""
						onblur="$('#postcode').val($('#postcode').val().toUpperCase());">
				</p>
				<p class="required text">
					<label for="city">Város <sup>*</sup> </label> <input type="text"
						class="text light" name="city" id="city" value="">
				</p>
	
				<p class="required text">
					<label for="phone">Telefonszám <sup>*</sup> </label> <input
						type="text" class="text light" name="phone" id="phone" value="">
				</p>
				
				<div class="user-form-footer required submit">
					<span style="color: #990000;"><sup>*</sup>kötelező kitölteni</span>
					<a href="{{URL::route('order', array('step' => 3))}}" style="float: right" type="submit" class="order-button" name="submitGuestAccount" id="submitGuestAccount">Tovább</a>
				</div>			
			</div>
		</fieldset>
	</form>
</div>

<div id="step-3" style="display:@if($step == 3)block; @else none; @endif">
	<div class="address_container group">
		<ul class="address item" id="address_delivery" style="height: 198px;">
			<li class="address_title">Szállítási név / cím</li>
			<li class="address_firstname lastname">asdasd asdasd</li>
			<li class="address_address1">asdasd</li>
			<li class="address_postcode city">1123 asdasdads</li>
			<li class="address_Country:name">Magyarország</li>
			<li class="address_phone">123123123</li>
			<li class="address_update"><a class="order-button"
				href="http://webshop.idokep.hu/address?id_address=391&amp;back=order.php?step=1"
				title="Módosít">Módosít</a></li>
		</ul>
		<ul class="address alternate_item " id="address_invoice"
			style="height: 198px;">
			<li class="address_title">Számlázási név / cím</li>
			<li class="address_firstname lastname">asdasd asdasd</li>
			<li class="address_address1">asdasd</li>
			<li class="address_postcode city">1123 asdasdads</li>
			<li class="address_Country:name">Magyarország</li>
			<li class="address_phone">123123123</li>
			<li class="address_update"><a class="order-button"
				href="http://webshop.idokep.hu/address?id_address=391&amp;back=order.php?step=1"
				title="Módosít">Módosít</a></li>
		</ul>
		<p class="txt">Megjegyzés</p>
		<p class="textarea"><textarea cols="60" rows="3" name="message"></textarea></p>
	</div>
	<div class="order-navigation">
		<a href="{{URL::route('order', array('step' => 2))}}" class="order-button">vissza</a>
		<a style="float:right" href="{{URL::route('order', array('step' => 4))}}" class="order-button">Tovább</a>
	</div>
</div>

<div id="step-4" style="display:@if($step == 4)block; @else none; @endif">
	<h3 class="title">VÁLASZD KI A SZÁLLÍTÁSI MÓDOT!</h3>
	<div class="delivery_options_address">
		<div class="delivery_options_title">Válasszon szállítási módot: Címem</div>
		<div class="delivery_options">
			<div class="delivery_option item">
				<table class="resume">
					<colgroup>
						<col width="1">
						<col width="1">
						<col width="0">
						<col width="1">
					</colgroup>
					<tbody>
						<tr>
							<td class="delivery_option_input"><input
								class="delivery_option_radio" type="radio"
								name="delivery_option[391]"
								onchange="updateExtraCarrier('17,', 391);"
								id="delivery_option_391_0" value="17," checked="checked">
							</td>
							<td class="delivery_option_logo" style="width: 428px;"><img src="{{ URL::asset('images/payment/logo_mpl.png') }}"
								alt="Viharvadász futár">
							</td>
							<td style="width: 352px;">
								<div class="delivery_option_title">Viharvadász futár</div>
								<div class="delivery_option_delay">3-6 munkanap</div>
							</td>
							<td style="width: 144px;">
								<div class="delivery_option_price">1 100 Ft&lrm; bruttó</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<div class="order-navigation">
		<a href="{{URL::route('order', array('step' => 3))}}" class="order-button">vissza</a>
		<a style="float:right" href="{{URL::route('order', array('step' => 5))}}" class="order-button">Tovább</a>
	</div>
</div>

<div id="step-5" style="display:@if($step == 5)block; @else none; @endif">
	<p style="font-size: 12px; padding-top: 10px;">Az ön kosarának tartalma <span style="font-weight: bold;" class="summary_products_quantity">3 Termék</span></p>

	<table id="cart_summary">
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
			<tr id="product_710016_0_0_0"
				class="last_item  cart_item address_0 even">
				<td class="cart_product">
					<a href="http://webshop.idokep.hu/home/710016-conrad-kulteri-napelemes-ultrahangos-kartev-kutya-macska-es-vadriaszto-mozgaserzekelvel-25-m.html"><img
						src="http://webshop.idokep.hu/30668-medium_default/conrad-kulteri-napelemes-ultrahangos-kartev-kutya-macska-es-vadriaszto-mozgaserzekelvel-25-m.jpg"
						alt="Conrad kültéri napelemes ultrahangos kártevő-, kutya-, macska- és vadriasztó mozgásérzékelővel, 25 m²">
					</a>
				</td>
				<td class="cart_description">
					<h5>
						<a
							href="http://webshop.idokep.hu/home/710016-conrad-kulteri-napelemes-ultrahangos-kartev-kutya-macska-es-vadriaszto-mozgaserzekelvel-25-m.html">Conrad
							kültéri napelemes ultrahangos kártevő-, kutya-, macska- és
							vadriasztó mozgásérzékelővel, 25 m²</a>
					</h5>
				</td>
				<td class="cart_unit">
					<span class="price" id="product_price_710016_0_0"> 13 990 Ft&lrm; </span>
				</td>
				<td class="cart_quantity">
					1
				</td>
				<td class="cart_total">
					<span class="price" id="total_product_price_710016_0_0"> 27 980
						Ft&lrm; </span>
				</td>
			</tr>
		</tbody>


		<tfoot>
			<tr class="cart_total_price">
				<td colspan="4" style="text-align: left;">Összesen</td>
				<td colspan="2" class="price" id="total_product" style="text-align: right;">36 970 Ft&lrm;</td>
			</tr>
			<tr class="cart_total_delivery">
				<td colspan="4" style="text-align: left;">Összes szállítás</td>
				<td colspan="2" class="price" id="total_shipping" style="text-align: right;">1 100 Ft&lrm;</td>
			</tr>
			<tr class="cart_total_price grand_total">
				<td colspan="4" id="cart_voucher" class="cart_voucher"></td>
				<td colspan="2" class="price total_price_container" id="total_price_container">
					<p>Végösszeg</p> 
					<span id="total_price">38 070 Ft&lrm;</span>
				</td>
			</tr>
		</tfoot>

	</table>
	
	<h3 class="title">Fizetési mód</h3>
	
	<p class="payment_module">
		<div style="display:inline-block">
			<img style="width: 130px;" src="{{ URL::asset('images/payment/szallitas.jpg') }}" />
			<p style="font-weight: bold; font-size: 12px; padding: 10px;">Utánvételes fizetés</p>
		</div>
		<a style="margin-top: 35px; float: right;" href="http://webshop.idokep.hu/module/cashondelivery/validation" class="order-button">A termék átvételekor fizetek, tovább >></a>
    </p>
	
	<div class="cart_navigation">
		<a href="{{URL::route('order', array('step' => 4))}}" class="order-button" title="Tovább">vissza</a>
	</div>
</div>
<!--
<div id="step-5" style="display:@if($step == 5)block; @else none; @endif">
	<div class="order-navigation">
		<a href="{{URL::route('order', array('step' => 4))}}" class="order-button">vissza</a>
		<a style="float:right" class="order-button">Megrendelem</a>
	</div>
</div>
-->
<script type="text/javascript">
/*
function hideAll() {
	$("#step-1").hide();
}

function showStep2() {
	hideAll();
	$("#step-bar-1").removeClass("step_current");
	$("#step-bar-1").addClass("step_done");
	$("#step-2").show();
}
*/
</script>











<!-- 
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
-->
@stop