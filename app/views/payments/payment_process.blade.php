@extends('layouts.master')

@section('content')

<div id="payment">

@include('payments.header')

<div id="step-1" style="display:@if($step == 1)block; @else none; @endif" >
	<p style="font-size: 12px; padding-top: 10px;">Az ön kosarának tartalma <span style="font-weight: bold;" class="summary_products_quantity">{{count(SCart::getItems())}} Termék</span></p>

	<table id="cart_summary" style="width: 100%;">
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
            @foreach (SCart::getItems() as $cartItem)
                <tr class="last_item  cart_item address_0 even">
                    <td class="cart_product">
                        <a href="">
                            <img style="width:60px;" src="{{$cartItem->image()}}">
                        </a>
                    </td>
                    <td class="cart_description" style="width: 500px; text-align: left;">
                        <a href="">{{$cartItem->description()}}</a>
                    </td>
                    <td class="cart_unit">
                        <span class="price" id="product_price_{{$cartItem->product_id}}">{{$cartItem->price()}} Ft&lrm; </span>
                    </td>
                    <td class="cart_quantity">
                        <input id="product_quantity_{{$cartItem->product_id}}" class="qty" style="width: 60px;" type="number" min="1" onkeypress="validate(event)" value="{{$cartItem->quantity}}">
                    </td>
                    <td class="cart_total">
                        <span class="price" id="total_product_price_{{$cartItem->product_id}}">{{$cartItem->sumPrice()}} Ft&lrm;</span>
                    </td>
                    <td class="cart_delete">
                        <div>
                            <a class="smaragd-button" id="product_delete_{{$cartItem->product_id}}$cartItem"
                               href="{{ URL::route('cart-remove', array('product_id' => $cartItem->product_id, 'option_id' => $cartItem->option_id )) }}">Törlöm a terméket</a>
                        </div>
                    </td>
                </tr>
            @endforeach
		</tbody>

		<tfoot>
			<tr class="cart_total_price">
				<td colspan="4" style="text-align: left;">Összesen</td>
				<td colspan="2" class="price" id="total_product" style="text-align: right;">{{SCart::sumPrice()}} Ft&lrm;</td>
			</tr>
			<tr class="cart_total_delivery">
				<td colspan="4" style="text-align: left;">Összes szállítási költség</td>
				<td colspan="2" class="price" id="total_shipping" style="text-align: right;">{{SCart::shippingCost()}} Ft&lrm;</td>
			</tr>
			<tr class="cart_total_price grand_total">
				<td colspan="4" id="cart_voucher" class="cart_voucher"></td>
				<td colspan="2" class="price total_price_container" id="total_price_container">
					<p>Végösszeg</p> 
					<span id="total_price">{{SCart::sumPrice() + SCart::shippingCost()}} Ft&lrm;</span>
				</td>
			</tr>
		</tfoot>

	</table>
	<div class="cart_navigation">
		<a href="/" class="autumn-button continue-shopping" title="Vásárlás folytatása">« Vásárlás folytatása</a>
		<a href="{{URL::action('PaymentsController@showGuestUserForm')}}" class="smaragd-button"  style="float: right;">Tovább</a>
	</div>
</div>

<script type="text/javascript">
$(".edit-cart-item").on("click", function(e) {
	var params = {};

	var sumPriceField = $(e.currentTarget).parent().parent().find(".sum-price");

	params.product_id = $(e.currentTarget).data("productid");
	params.option_id = $(e.currentTarget).data("optionid");
	params.qty = $(e.currentTarget).parent().parent().find(".qty").val();

	$.post( "{{URL::action('CartController@updateItem')}}", params)
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

@stop