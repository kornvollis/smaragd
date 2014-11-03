@extends('layouts.master')

@section('content')

@include('includes/bread_crumbs', array('breadCrumbs' => $breadCrumbs))

<div class="modal fade" id="buy-confirm-modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">Beraktuk a kosaradba!</h4>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Folytatom a vásárlást</button>
        <button id="pay-button" type="button" class="smaragd-button">Fizetés/kosár megtekintése</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="a-col">
	@include('includes/navigation')
    @include('includes/cart_info')
</div>

<div class="b-col products-margin">
	<div class="productInfoImageContainer">
		<div class="vertical-middle">
			<img class="productInfo-img" src="{{ $product->getFirstImage() }}" />
		</div>
		@if(count($product->images) > 1)
			<div id="thumbnails">
			@foreach ($product->images as $image)
				<div><img class="productInfo-small-img" src="{{ URL::asset('images/p') }}/{{$image->path}}" /></div>
			@endforeach
			</div>
		@endif
	</div>
	
	
	<div class="productInfo">
		<p class="productInfo-name">{{ $product->name }}</p>
		
		
		<dl class="productInfo-description">
			<dt>Leírás: </dt>
			<dd id="description">
			@if ($product->hasOptions())
				@if($product->options->first()->description != "")
					{{$product->options->first()->description}}
				@else
					N/A
				@endif
			@else
				@if($product->description != "")
					{{$product->description}}
				@else
					N/A
				@endif
			@endif
			</dd>
		</dl>

        @if($product->code != "")
		<dl>
            <dt>Cikkszám: </dt>
            <dd id="product-code">
                {{$product->code}}
            </dd>
		</dl>
		@endif

		<dl>
			<dt>Szállítás: </dt>
			<dd>
				Külső raktrárról elérhető, 3-5 munkanapon belül
			</dd>
		</dl>
		
		<!-- form role="form" action="{{URL::route('cart-add', array('id' => $product->id))}}" method="post" -->
			@if ($product->hasOptions())
			<dl>
				<dt>Tipus: </dt>
				<dd>
					<select name="option" id="options" name="option">
					@foreach($product->options as $option)
						<option value="{{$option->id}}" data-price="{{$product->displayedPrice($option->id)}}" data-description="{{$option->description}}">{{$option->description}}</option>
					@endforeach
					</select>
				</dd>
			</dl>
			@endif
			<dl>
				<dt>Darab: </dt>
				<dd><input id="quantity" style="width: 87px;" onkeypress="validate(event)" type="number" name="qty" value="1"  min="1" /></dd>
			</dl>
			
			<dl class="productInfo-price">
				<dt>Bruttó ár: </dt>
				<dd id="price">
				@if ($product->hasOptions())
					{{ HTML::priceFormat($product->displayedPrice($product->options->first()->id)) }} Ft
				@else
					{{ HTML::priceFormat($product->displayedPrice()) }} Ft
				@endif
				</dd>
			</dl>
			
			<input id="product-id" type="id" name="id" style="display: none;" value="{{ $product->id }}" />
			<br><br>
			<button id="buy-item" type="submit" class="smaragd-button">
			    Kosárba rak<span style="margin-left: 11px;" class="glyphicon glyphicon-shopping-cart"></span>
			</button>
	</div>
</div>
@stop

@section('end')
<script>

$('#buy-item').click(function() {
    var qty = $('#quantity').val();
    var qty = $('#quantity').val();
    var qty = $('#quantity').val();

    var data = {};
    data.id = $("#product-id").val();
    data.qty = $('#quantity').val();
    data.option = $("#options").val();

    $.ajax({
      type: "POST",
      url: "{{URL::route('cart-add')}}",
      data: data,
      dataType: 'json',
      success: function() {
        $('#buy-confirm-modal').modal('show');
      },
      error: function() {
         alert("error");
       }
    });

})

$("#pay-button").click(function() {
    window.location.href = "{{URL::route('order', array('step' => 1))}}";
});

$("#thumbnails img").on("click", function(e) {
	$(".productInfo-img").attr("src", e.currentTarget.src);
});

$("#options").on("change", function(e) {
	var option = $('#options').find(":selected");
	$("#price").html(option.data("price") + " Ft");
	$("#description").html(option.data("description"));
});

function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}
</script>
@stop