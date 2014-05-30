<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="{{ URL::asset('css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <link rel="stylesheet" href="{{ URL::asset('css/admin.css') }}" />
	

    <!-- Latest compiled and minified JavaScript -->
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script src="/smaragd/resources/js/bootstrap.min.js"></script>
    <script src="/smaragd/resources/js/jquery.validate.js"></script>
	<script src="{{ URL::asset('js/admin.js') }}"></script>
</head>

<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
        </button>
    </div>

    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
            <li><a href="{{ URL::action('AdminController@show')}}">TERMÉKEK</a></li>
            <li><a href="{{ URL::action('AdminController@showAddProduct')}}">ÚJ TERMÉK</a></li>
        </ul>
    </div>
</nav>

@yield('content')

</body>