<li>{{$category->name}}
	@if ($category->hasChild())
		<ol class="nav nav-pills">
		@foreach (Menu::getFirstChildCategories($category) as $child)
			@include('menu.item', array('category'=>$child))
		@endforeach
		</ol>
	@endif
</li>