<html>

<head>
	<link rel="stylesheet" href="{{ URL::asset('css/bootstrap.min.css') }}" />
</head>

<body>
<div style="width:800px; margin-left:auto; margin-right:auto;" id="edit">
<h1>Új termék</h1>

{{ Form::open(array('action' => 'AdminController@addProduct'))  }}

    {{ Form::label('name', 'Név') }}
    {{ Form::text('name', '', array('class' => 'form-control')) }}

    {{ Form::label('description', 'Részletes leírás') }}
    {{ Form::textarea('description', '', array('class' => 'form-control')) }}

    {{ Form::label('price', 'Ár') }}
    {{ Form::text('price', '', array('class' => 'form-control')) }}

    {{ Form::label('category_id', 'Kategória') }}
    {{ Form::select('category_id', Menu::selectArray(false), null,  array('class' => 'form-control')) }}

    {{ Form::submit('Termék felvétele!', array('class' => 'btn btn-default')) }}
{{ Form::close() }}

</div>
</body>

</html>