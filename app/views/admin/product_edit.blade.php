<html>

<head>
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<link rel="stylesheet" href="{{ URL::asset('css/bootstrap.min.css') }}" />
	<link rel="stylesheet" href="{{ URL::asset('css/admin/product-edit.css') }}" />
</head>

<body>
<a href="{{ URL::action('AdminController@show') }}">Vissza</a>
<div style="width:800px; margin-left:auto; margin-right:auto;" id="edit">
{{ Form::open(array('action' => 'AdminController@updateProduct')) }}
    {{ Form::text('id', $product->id, array('style' => 'display:none', 'id'=>'product-id')) }}
    {{ Form::label('name', 'Név') }} {{ Form::text('name', $product->name, array('class' => 'form-control')) }}
    {{ Form::label('description', 'Részletes leírás') }} {{ Form::textarea('description', $product->description, array('class' => 'form-control')) }}
    {{ Form::label('price', 'Ár') }} {{ Form::text('price', $product->price, array('class' => 'form-control')) }}
    {{ Form::label('category_id', 'Kategória') }}
    {{ Form::select('category_id', Menu::selectArray(false), $product->category->id,  array('class' => 'form-control')) }}
    {{ Form::submit('Módosít!', array('class' => 'btn btn-default')) }}
{{ Form::close() }}

<h1>Opció hozzáadása</h1>
<div id="product-options">
    <table style="width: 100%">
    <th>Ár</th><th>Leírás</th><th>Termék kód</th><th>Kép</th><th>Müveletek</th>
    
    @foreach ($product->options as $prod_option)
	<tr>
		<td><input style="display: inline-block;" class="form-control" type="text" name="price" value="{{$prod_option->price}}"></td>
		<td><input style="display: inline-block;" class="form-control" type="text" name="description" value="{{$prod_option->description}}"></td>
		<td><input style="display: inline-block;" class="form-control" type="text" name="code" value="{{$prod_option->code}}"></td>
		<td><img data-piid="{{$prod_option->product_image_id}}" style="width: 30px;" src="{{asset('images/p/' . $prod_option->image->path)}}" /></td>
		<td><button class="edit-option" data-id="{{$prod_option->id}}" type="button" class="btn btn-default navbar-btn">Módosít</button></td>
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
});

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

</body>

</html>