@extends('layouts.master')

@section('content')

<div id="payment">

    @include('payments.header')

    <div>
        <div class="address_container group">

            @if (!isset($user->billingAddress))
                <p>A szállítási és számlázási címek megegyeznek!</p>
            @endif

            <div class="address-box">
                <ul id="address_delivery">
                    <li class="address_title">Szállítási adatok</li>
                    <li class="address_email">
                        <div class="address-column-left">E-mail</div>
                        <div class="address-column-right">{{$user->email}}</div>
                    </li>
                    <li class="address_firstname lastname">
                        <div class="address-column-left">Név</div>
                        <div class="address-column-right">{{$user->lastName}} {{$user->firstName}}</div>
                    </li>
                    <li class="address_phone">
                        <div class="address-column-left">Telefonszám</div>
                        <div class="address-column-right">{{$user->phone}}</div>
                    </li>
                    <li class="address_city">
                        <div class="address-column-left">Város</div>
                        <div class="address-column-right">{{$user->shippingAddress->city}}</div>
                    </li>
                    <li class="address_postcode">
                        <div class="address-column-left">Irányítószám</div>
                        <div class="address-column-right">{{$user->shippingAddress->zipCode}}</div>
                    </li>
                    <li class="address_street">
                        <div class="address-column-left">Utca, házszám</div>
                        <div class="address-column-right">{{$user->shippingAddress->street}}</div>
                    </li>
                </ul>
                <a class="address-edit" href="" title="Módosít">Adatok módosítása</a>
            </div>

            @if(isset($user->billingAddress))
                <div class="address-box">
                    <ul class="address alternate_item " id="address_invoice">
                        <li class="address_title">Számlázási adatok</li>
                        <li class="address_firstname lastname">
                            <div class="address-column-left">Cégnév / név</div>
                            <div class="address-column-right">{{$user->billingAddress->companyName}}</div>
                        </li>
                        <li class="address_city">
                            <div class="address-column-left">Város</div>
                            <div class="address-column-right">{{$user->billingAddress->city}}</div>
                        </li>
                        <li class="address_postcode">
                            <div class="address-column-left">Irányítószám</div>
                            <div class="address-column-right">{{$user->billingAddress->zipCode}}</div>
                        </li>
                        <li class="address_street">
                            <div class="address-column-left">Utca, házszám</div>
                            <div class="address-column-right">{{$user->billingAddress->street}}</div>
                        </li>
                    </ul>
                    <a class="address-edit" href="" title="Módosít">Adatok módosítása</a>
                </div>
                <p class="txt">Megjegyzés</p>
                <p class="textarea"><textarea cols="60" rows="3" name="message"></textarea></p>
            @endif
        </div>
        <div class="order-navigation">
            <a href="{{URL::route('order', array('step' => 2))}}" class="smaragd-button">vissza</a>
            <a href="{{URL::action('PaymentsController@showShippingOptions')}}" class="smaragd-button"  style="float: right;">Tovább</a>
        </div>
    </div>

</div>

@stop