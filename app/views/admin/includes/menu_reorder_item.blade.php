<li data-id="{{$category->id}}" >{{$category->name}}
    @if ($category->hasChild() )
    <ol>
        @foreach (Menu::getFirstChildCategories($category) as $child)
        	@include ('admin/includes/menu_reorder_item', array('category'=>$child))
        @endforeach
    </ol>
    @endif
</li>