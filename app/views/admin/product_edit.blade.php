{{ Form::open(array('action' => 'AdminController@updateProduct'))  }}

    {{ Form::text('id', $product->id, array('style' => 'display:none')) }}

    {{ Form::label('name', 'Név') }}
    {{ Form::text('name', $product->name) }}

    {{ Form::label('description', 'Név') }}
    {{ Form::text('description', $product->description) }}

    {{ Form::label('price', 'Ár') }}
    {{ Form::text('price', $product->price) }}

    {{ Form::label('category_id', 'Kategória') }}
    {{ Form::select('category_id', Menu::selectArray(false)) }}

    {{ Form::submit('Módosít!') }}
{{ Form::close() }}