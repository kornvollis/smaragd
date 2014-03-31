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
            <li><span class="editlock glyphicon glyphicon-lock"></span></li>
            <li><a id="admin-newproduct">Új termék</a></li>
        </ul>
    </div>
</nav>

<div id="admin-page">


<div style="position: relative">
	<div id="left-column">
		<ol>
		@foreach ($menu->getRootCategories() as $category)
			@include ('admin.menu_item', array('category'=>$category))
		@endforeach	
		</ol>

		{{ Form::open(array('action' => 'AdminController@addCategory')) }}
			{{ Form::label('name', 'Új kategória') }}
			{{ Form::text('name', 'barackfavirag') }}
			{{ Form::submit('Hozzáad!') }}
		{{ Form::close() }}
        

	</div>
	<div id="right-column">
		<h1 id="selectedCategory">TITLE</h1> <br>
		<table class="inventory-items table">
			<tr>
				<th>Kiválaszt</th>
				<th>Kép</th>
				<th>Név</th>
				<th class="description">Leírás</th>
				<th class="netto_price">Netto ár</th>
				<th class="price">Bruttó ár</th>
				<th class="sell_price">Eladási ár</th>
				<th class="profit_key">Haszon kulcs</th>
				<th>Kategória</th>
				<th>Muveletek</th>
			</tr>
			@foreach ($products as $product)		
				<tr>
					<th><input type="checkbox" name="select" ></th>
					<th><img style="width: 50px;" src="{{asset('images/p/' . $product->image)}}" /></th>
					<th>{{ $product->name}}</th>
					<th class="description">{{ $product->description}}</th>
					<th class="netto_price">{{ $product->price}}</th>
					<th class="price">{{ $product->price}}</th>
					<th class="sell_price">{{ $product->price}}</th>
					<th class="profit_key">profit key</th>
					<th>$product->category->name</th>
					<th>Muveletek</th>
				</tr>
			@endforeach
		</table>
	</div>
</div>

	
	
	
</body>

</html>