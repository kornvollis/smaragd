<html>

<head>
	<link rel="stylesheet" href="{{ URL::asset('css/bootstrap.min.css') }}" />
</head>

<body>
<a href="{{ URL::action('AdminController@show') }}">Vissza</a>
<div style="width:800px; margin-left:auto; margin-right:auto;" id="edit">
{{ Form::open(array('action' => 'AdminController@updateProduct'))  }}

    {{ Form::text('id', $product->id, array('style' => 'display:none')) }}

    {{ Form::label('name', 'Név') }}
    {{ Form::text('name', $product->name, array('class' => 'form-control')) }}

    {{ Form::label('description', 'Részletes leírás') }}
    {{ Form::textarea('description', $product->description, array('class' => 'form-control')) }}

    {{ Form::label('price', 'Ár') }}
    {{ Form::text('price', $product->price, array('class' => 'form-control')) }}

    {{ Form::label('category_id', 'Kategória') }}
    {{ Form::select('category_id', Menu::selectArray(false), $product->category->id,  array('class' => 'form-control')) }}

    {{ Form::submit('Módosít!', array('class' => 'btn btn-default')) }}
{{ Form::close() }}

<h1>Képek</h1>

@if (count($product->images) > 0)
	<ul>
	@foreach ($product->images as $image)
   		<li><img style="width: 50px;" src="{{asset('images/p/' . $image->path)}}" /> <a href="{{ URL::route('delete-product', array('id' => $image->id, 'product_id' => $image->product_id)) }}">töröl</a></li>
   	@endforeach
   	</ul>
@endif
   	
{{ Form::open(array('action' => 'AdminController@uploadProductImage', 'files' => true))  }}
	{{ Form::text('id', $product->id, array('style' => 'display:none')) }}
	{{ Form::file('image') }}
	{{ Form::submit('Feltölt!') }}	
{{ Form::close() }}
</div>
</body>

</html>