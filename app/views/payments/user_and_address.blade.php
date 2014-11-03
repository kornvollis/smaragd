@extends('layouts.master')

@section('imports')
<link rel="stylesheet" href="{{ URL::asset('css/user_data_form.css') }}" />
@stop

@section('content')
<div id="payment">
    @include('payments.header')
    <h3 class="title">Vendég vásárlás</h3>

    <form action="{{URL::action('PaymentsController@processUserData')}}" role="form" method="post" id="new_account_form" class="guest-form">
        <div class="form-group">
            <label for="email">Add meg az E-mail címed!</label>
            <input type="email" name="email" class="form-control" id="email" placeholder="">
        </div>
        <div class="form-group">
            <label for="firstname">Keresztnév <sup>*</sup> </label>
            <input type="text" name="firstname" class="form-control" id="firstname" placeholder="">
        </div>
        <div class="form-group">
            <label for="lastname">Vezetéknév <sup>*</sup> </label>
            <input type="text" name="lastname" class="form-control" id="lastname" placeholder="">
        </div>
        <div class="form-group">
            <label for="phone">Telefonszám <sup>*</sup> </label>
            <input type="text" name="phone" class="form-control" id="phone" placeholder="">
        </div>

        <h4 class="subtitle">Szállítási cím megadása</h4>

        <div class="form-group">
            <label for="city">Város <sup>*</sup> </label>
            <input type="text" name="city" class="form-control" id="city" placeholder="">
        </div>
        <div class="form-group">
            <label for="postcode">Irányítószám <sup>*</sup> </label>
            <input type="text" name="postcode" class="form-control" id="postcode" placeholder="">
        </div>
        <div class="form-group">
            <label for="address">Utca, házszám <sup>*</sup> </label>
            <input type="text" name="address" class="form-control" id="address" placeholder="">
        </div>

        <div class="form-group">
            <input id="same-address" type="checkbox" name="shipping_billing_address" value="check">A számlázásí címem külöbzik a szállításí címtől
        </div>

        <div id="billing-address" style="display: none;">
            <div class="form-group">
                <label for="billing_company">Cégnév / név</label>
                <input type="text" name="billing_company" class="form-control" id="company" placeholder="">
            </div>
            <div class="form-group">
                <label for="billing_city">Város <sup>*</sup> </label>
                <input type="text" name="billing_city" class="form-control" id="city" placeholder="">
            </div>
            <div class="form-group">
                <label for="billing_postcode">Irányítószám <sup>*</sup> </label>
                <input type="text" name="billing_postcode" class="form-control" id="postcode" placeholder="">
            </div>
            <div class="form-group">
                <label for="billing_address">Utca, házszám <sup>*</sup> </label>
                <input type="text" name="billing_address" class="form-control" id="address" placeholder="">
            </div>
        </div>

        <div class="user-form-footer required submit">
            <button type="submit" class="smaragd-button">Tovább</button>
        </div>
    </form>
</div>



<script>
$(document).ready(function() {

    $('#same-address').change(function() {
        if($(this).is(":checked")) {
            $('#billing-address').show();
        } else {
            $('#billing-address').hide();
        }
    });


    var billingValidator = {
        validators: {
            callback: {
                callback: function (value, validator, $field) {
                    // Determine the numbers which are generated in captchaOperation
                    if($("#same-address").is(':checked'))
                    {
                        if(value.length > 0)
                        {
                            return true;
                        } else {
                            return false;
                        }
                    }

                    return true;
                }
            }
        }
    };

    var nameValidation = {
        validators: {
            notEmpty: {}
        }
    };

    $('.guest-form').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            address: { validators: { notEmpty: {} } },
            city: { validators: { notEmpty: {} } },
            postcode:{ validators: { notEmpty: {},
                                     stringLength: {min: 4, max: 4 }
            }},
            firstname: nameValidation,
            lastname: nameValidation,
            mobil: {
                validators: {
                    notEmpty: {},
                    stringLength: { min: 7 },
                    regexp: {
                        regexp: /^[0-9 /-]+$/
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {},
                    emailAddress: {}
                }
            },
            billing_city: {
                validators: {
                    notEmpty: {}
                }
            },
            billing_postcode: {
                validators: {
                    notEmpty: {}
                }
            },
            billing_address: {
                validators: {
                    notEmpty: {}
                }
            }
        }
    });
});

</script>

@stop