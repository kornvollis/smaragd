<li><a href="{{ URL::action('AdminController@show', array('id' => $category->id)) }}"> {{$category->name}} </a>
    <!-- a style="float: right;" href="remove-category/{{$category->id}}" >töröl</a -->
	@if ($category->hasChild() )
	<ol>
	@foreach (Menu::getFirstChildCategories($category) as $child)
		@include ('admin.menu_item', array('category'=>$child))
	@endforeach
	</ol>
	@endif
</li>