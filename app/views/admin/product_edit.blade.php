@extends('layouts.admin')

@section('content')

<div class="row" style="margin-left: 19px;">
	<div class="col-md-4">
		<h2>{{$product->name}}</h2>
		{{ Form::open(array('action' => 'AdminController@updateProduct')) }}
		    {{ Form::text('id', $product->id, array('style' => 'display:none', 'id'=>'product-id')) }}
		    {{ Form::label('name', 'Név') }} {{ Form::text('name', $product->name, array('class' => 'form-control')) }}
		    {{ Form::label('code', 'Cikkszám') }} {{ Form::text('code', $product->code, array('class' => 'form-control')) }}
		    {{ Form::label('description', 'Részletes leírás') }}
		    <textarea class="form-control base-description" name="description" rows="3">{{$product->description}}</textarea>
		    {{ Form::label('price', 'Ár') }} {{ Form::text('price', $product->price, array('class' => 'form-control')) }}
		    {{ Form::label('profit_key', 'Profit kulcs') }} {{ Form::text('profit_key', $product->profit_key, array('class' => 'form-control')) }}
		    {{ Form::label('category_id', 'Kategória') }}
		    {{ Form::select('category_id', Menu::selectArray(false), $product->category->id,  array('class' => 'form-control')) }}
		    {{ Form::submit('Módosít!', array('class' => 'btn btn-default')) }}
		{{ Form::close() }}
	</div>
	
	<div class="col-md-4">
		<h2>Opció hozzáadása</h2>
		<div id="product-options">
		    <table style="width: 100%">
		    <th>Ár</th><th>Leírás</th><th>Cikkszám</th><th>Kép</th><th>Müveletek</th>
		    
		    @foreach ($product->options as $prod_option)
			<tr>
				<td><input style="display: inline-block;" class="form-control" type="text" name="price" value="{{$prod_option->price}}"></td>
				<td><input style="display: inline-block;" class="form-control" type="text" name="description" value="{{$prod_option->description}}"></td>
				<td><input style="display: inline-block;" class="form-control" type="text" name="code" value="{{$prod_option->code}}"></td>
				<td><img data-piid="{{$prod_option->product_image_id}}" style="width: 30px;" src="{{ $prod_option->image->source() }}" /></td>
				<td>
					<button class="edit-option" data-id="{{$prod_option->id}}" type="button" class="btn btn-default navbar-btn">Módosít</button>
					<button class="delete-option" data-id="{{$prod_option->id}}" type="button" class="btn btn-default navbar-btn">Töröl</button>
				</td>
			</tr>
		    @endforeach
		    <tr>
				<td><input id="option-price" style="display: inline-block;" class="form-control" type="text" name="price"></td>
				<td><input id="option-product-description" style="display: inline-block;" class="form-control" type="text" name="description"></td>
				<td><input id="option-code" style="display: inline-block;" class="form-control" type="text" name="code"></td>
				<td>
				@foreach ($product->images as $image)
		   			<img class="option-image" style="width: 30px;"  data-id="{{$image->id}}" src="{{asset('images/p/' . $image->path)}}" />
				@endforeach
				</td>
				<td><button id="add-option" type="button" class="btn btn-default navbar-btn" onclick="addOption();">Opció hozzáad</button></td>
			</tr>
		    </table>
		</div>
	</div>
	
	<div class="col-md-4">
		<h2>Képek</h2>
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
	</div>
</div>

<script>

$( function() {
	$(".option-image").first().addClass("selected");
	$(".option-image").on("click", function() {
		$(".option-image.selected").removeClass("selected");
		$(this).addClass("selected");
	});

	$(".edit-option").on("click", function(e) {
		editOption(e);
	});
	$(".delete-option").on("click", function(e) {
		deleteOption(e);
	});
	
});

function deleteOption(e) {
	var row = $(e.currentTarget).parent().parent();	
	var params = {};

	params.id = $(e.currentTarget).data("id");
	params.product_id = $("#product-id").val();
	params.description = row.find("input[name=description]").val();
	params.code = row.find("input[name=code]").val();
	params.price = row.find("input[name=price]").val();
	params.product_image_id = row.find("img").data("piid");
	
	$.post( "{{ URL::action('AdminController@deleteProductOption') }}", params)
	.done(function( data ) {
	    alert("Sikeres törlés");
  	});	
}

function editOption(e) {
	var row = $(e.currentTarget).parent().parent();	
	var params = {};

	params.id = $(e.currentTarget).data("id");
	params.product_id = $("#product-id").val();
	params.description = row.find("input[name=description]").val();
	params.code = row.find("input[name=code]").val();
	params.price = row.find("input[name=price]").val();
	params.product_image_id = row.find("img").data("piid");
	
	$.post( "{{ URL::action('AdminController@editProductOption') }}", params)
	.done(function( data ) {
	    alert("Sikeres modositás");
  	});	
}

function addOption() {

	var params = {};
	
	params.product_id = $("#product-id").val();
	params.description = $("#option-product-description").val();
	params.code = $("#option-code").val();
	params.price = $("#option-price").val();
	params.product_image_id = $(".option-image.selected").data("id");

	
	alert(new String(params));
	$.post( "{{ URL::action('AdminController@addProductOption') }}", params)
	.done(function( data ) {
	    console.log("Data: " + data);
  	});	
}
</script>

@stop