<li>{{$category->name}}
@if ($category->hasChild() )
<ol>
@foreach ($menu->getFirstChildCategories($category->lft, $category->rgt) as $child)
	@include ('admin.menu_item', array('category'=>$child))
@endforeach
</ol>
@endif
</li>