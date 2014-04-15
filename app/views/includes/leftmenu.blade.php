<div id="leftMenu">
	<ol>
		@foreach (Menu::allCategories() as $category)
			<li><a href="{{URL::route('products', array('id' => $category->id))}}">{{$category->name}}</a></li>
		@endforeach
	</ol>
</div>