<div class="product-item">
	<div class="product-item-imageBorder">
		<a href="{{URL::action('info', array('id'=>$product->id))}}"><img class="product-item-image" src="{{$product->getFirstImage()}}"></img></a>
	</div>
	<div class="product-item-info">
		<a class="product-item-name" href="{{URL::action('info', array('id'=>$product->id))}}" title="{{ $product->name }}">
			{{ $product->name }}
		</a>
		<a class="product-item-price" href="{{URL::action('info', array('id'=>$product->id))}}">
			{{ HTML::priceFormat($product->lowestPrice()) }} Ft
		</a>
		<a href="{{URL::action('info', array('id'=>$product->id))}}"><button type="button" class="buy-it-link btn btn-success">KOSÁRBA</button></a>
	</div>
</div>