@extends('layouts.master')

@section('content')

Step: {{$step}}

<ul class="step group" id="order_step">
	<li id="step-bar-1" class="step_current">
		<span>1. Vásárlás összesítés</span>
	</li>
	<li id="step-bar-2" class="step_todo">
		<span>2. Adatok megadása</span>
	</li>
	<li id="step-bar-3" class="step_todo" style="width: 244px;">
		<span>3. Szállítási/Számlázási adatok</span>
	</li>
	<li id="step-bar-4" class="step_todo">
		<span>4. Szállítás</span>
	</li>
	<li id="step-bar-5" class="step_todo">
		<span>5. Fizetés</span>
	</li>
</ul>

<div id="step-1" class="table_block">
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
		<a href="{{URL::route('order', array('step' => 2)))}}" class="exclusive standard-checkout next" title="Tovább">Tovább »</a>
	</div>
</div>



<div id="step-2" style="display:none">
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
					<input style="float: right" type="submit" class="next" name="submitGuestAccount" id="submitGuestAccount" value="Tovább">
				</div>			
			</div>
		</fieldset>
	</form>
</div>



<script type="text/javascript">

function hideAll() {
	$("#step-1").hide();
}

function showStep2() {
	hideAll();
	$("#step-bar-1").removeClass("step_current");
	$("#step-bar-1").addClass("step_done");
	$("#step-2").show();
}
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