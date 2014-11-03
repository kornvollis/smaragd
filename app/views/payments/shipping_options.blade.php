@extends('layouts.master')

@section('content')

<div id="payment">

    @include('payments.header')

    <div>
    	<h3 class="title">VÁLASZD KI A SZÁLLÍTÁSI MÓDOT!</h3>
    	<div class="delivery_options_address">
    		<div class="delivery_options_title">
    		    Szállítási cím: {{Session::get('guest_user')->shippingAddress->city}} {{Session::get('guest_user')->shippingAddress->zipCode}} {{Session::get('guest_user')->shippingAddress->street}}
    		</div>
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
    							<td class="delivery_option_logo" style="width: 428px;"><img src="{{URL::asset('images/payment/logo_mpl.png')}}"
    								alt="Viharvadász futár">
    							</td>
    							<td style="width: 352px;">
    								<div class="delivery_option_title">MPL (utánvétel)</div>
    								<div class="delivery_option_delay">3-6 munkanap</div>
    							</td>
    							<td style="width: 144px;">
    								<div class="delivery_option_price">{{SCart::shippingCost()}} Ft</div>
    							</td>
    						</tr>
    					</tbody>
    				</table>
    			</div>
    		</div>
    	</div>

    	<div class="order-navigation">
    		<a href="{{URL::route('order', array('step' => 3))}}" class="smaragd-button">vissza</a>
    		<a href="{{URL::action('PaymentsController@showPaymentSummary')}}" class="smaragd-button"  style="float: right;">Tovább</a>
    	</div>
    </div>

</div>

@stop