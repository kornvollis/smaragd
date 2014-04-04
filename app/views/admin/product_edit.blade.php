{{ Form::model($product) }}

{{ Form::label('name', 'Név') }}
{{ Form::text('name', $product->name) }}

{{ Form::label('price', 'Ár') }}
{{ Form::text('price', $product->price) }}

{{ Form::close() }}