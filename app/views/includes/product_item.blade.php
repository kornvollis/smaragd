<!--
<div class="product-item">
	<div class="product-item-imageBorder">
		<a href="{{URL::action('info', array('id'=>$product->id))}}"><img class="product-item-image" src="{{$product->getFirstImage()}}"></img></a>
	</div>
	<div class="product-item-info">
		<a class="product-item-name" href="{{URL::action('info', array('id'=>$product->id))}}" title="{{ $product->name }}">
			{{ $product->name }}
		</a>

		<p class="product-item-price" href="{{URL::action('info', array('id'=>$product->id))}}">
		    @if($product->hasDiscount())<span class="product-item-old-price">{{$product->old_price}} Ft</span>@endif
			<a href="{{URL::action('info', array('id'=>$product->id))}}">{{HTML::priceFormat($product->lowestPrice())}} Ft </a>
		</p>
		<a href="{{URL::action('info', array('id'=>$product->id))}}"><button type="button" class="buy-it-link btn btn-success">KOSÁRBA</button></a>
	</div>
</div>
-->

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