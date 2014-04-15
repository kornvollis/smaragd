<html>
	<head>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="{{ URL::asset('css/about.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/navbar.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/main.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/leftmenu.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/productinfo.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/products.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/footer.css') }}" />
		<link rel="stylesheet" href="{{ URL::asset('css/bootstrap.min.css') }}" />
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
		<script src="{{ URL::asset('js/bootstrap.min.js') }}"></script>
		<script src="{{ URL::asset('js/jquery.validate.js') }}"></script>
		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	</head>
    <body>
        @section('header')
            @include('includes/header')
        @show		
		
        <div class="container">
            @yield('content')
        </div>
        
        <div id="footer">
			<div class="footer-facebook">Kövess minket a facebookon is!!!</div>
	    	<div class="footer-column">
		        <div>Mobil: <span>+3620/ 942 09 40</span></div>
		        <div>Telefon: <span>061/ 260 45 32</span></div>
		        <div>Fax: <span>061/ 431 98 36</span></div>
	        </div>
	        <div class="footer-column">
		        <div>Adószám: <span>12160936-2-42</span></div>
		        <div>Cégjegyzékszám: <span>01-06-560545</span></div>
		        <div>Ügyvezető: <span>Szabó Judit</span></div>
	        </div>
	        <div class="footer-bottomline">2014 Smaragd Út webshop - Minden jog fentartva.</div>
		</div> <!-- /FOOTER -->
		
		@yield('end')
    </body>
</html>