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

<p>Képek</p>

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
   	
