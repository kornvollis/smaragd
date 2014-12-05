<div class="product-item">
	<div class="product-item-imageBorder">
		<a href="{{URL::action('info', array('id'=>$product->id))}}">
			<img class="product-item-image" src="{{$product->getFirstImage()}}">
		</a>
	</div>
	<div class="product-item-info">
		<a href="{{URL::action('info', array('id'=>$product->id))}}">
			<p class="product-item-name">{{$product->name}}</p>
		</a>
		<a href="{{URL::action('info', array('id'=>$product->id))}}">
			<p class="product-item-price">{{HTML::priceFormat($product->lowestPrice())}} Ft</p>
		</a>
		<a href="{{URL::action('info', array('id'=>$product->id))}}">
			<button type="button" class="details-link">Részletek</button>
		</a>
	</div>
</div>