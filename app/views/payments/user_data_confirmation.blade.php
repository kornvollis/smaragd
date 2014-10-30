@extends('layouts.master')

@section('content')

<div id="payment">

    @include('payments.header')

    <div id="step-3" style="display:@if($step == 3)block; @else none; @endif">
        <div class="address_container group">
            <ul class="address item" id="address_delivery" style="height: 198px;">
                <li class="address_title">Szállítási név / cím</li>
                <li class="address_firstname lastname">asdasd asdasd</li>
                <li class="address_address1">asdasd</li>
                <li class="address_postcode city">1123 asdasdads</li>
                <li class="address_Country:name">Magyarország</li>
                <li class="address_phone">123123123</li>
                <li class="address_update"><a class="smaragd-button"
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
                <li class="address_update"><a class="smaragd-button"
                    href="http://webshop.idokep.hu/address?id_address=391&amp;back=order.php?step=1"
                    title="Módosít">Módosít</a></li>
            </ul>
            <p class="txt">Megjegyzés</p>
            <p class="textarea"><textarea cols="60" rows="3" name="message"></textarea></p>
        </div>
        <div class="order-navigation">
            <a href="{{URL::route('order', array('step' => 2))}}" class="smaragd-button">vissza</a>
            <a href="{{URL::route('order', array('step' => 4))}}" class="smaragd-button"  style="float: right;">Tovább</a>
        </div>
    </div>

</div>

@stop