<html>
	<head>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="{{ URL::asset('css/about.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/navbar.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/main.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/leftmenu.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/navigation.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/productinfo.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/products.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/footer.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/featuredproducts.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/payment.css') }}" />
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
		<script src="{{ URL::asset('js/jquery.validate.js') }}"></script>
		<script src="{{ URL::asset('js/typeahead.min.js') }}"></script>
		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	</head>
    <body>
        @section('header')
            @include('includes/header')
        @show		
		
        <div class="smaragd-container">
            @yield('content')
        </div>
        
        <div id="footer">
	    	<div>
		        <a href="{{URL::route('home')}}">Főoldal</a> |
                <a href="{{URL::route('products')}}">Termékek</a> |
                <a href="{{URL::route('shippinginfo')}}">Szállítás/Fizetés</a> |
                <a href="{{URL::route('about')}}">Rólunk</a>
	        </div>
	        <div class="footer-bottomline">2014 Smaragd Út webshop - Minden jog fentartva.</div>
		</div> <!-- /FOOTER -->
		
		@yield('end')
		
		@include('includes/google_analytics')
    </body>
</html>