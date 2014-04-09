<li>{{$category->name}} <a href="remove-category/{{$category->id}}" >töröl</a>
	@if ($category->hasChild() )
	<ol>
	@foreach ($menu->getFirstChildCategories($category) as $child)
		@include ('admin.menu_item', array('category'=>$child))
	@endforeach
	</ol>
	@endif
</li>