<li><input name='category[{{$category->id}}]' value='{{$category->name}}'>
    <!-- a style="float: right;" href="remove-category/{{$category->id}}" >töröl</a -->
    @if ($category->hasChild() )
    <ol>
        @foreach (Menu::getFirstChildCategories($category) as $child)
        	@include ('admin/includes/menu_edit_item', array('category'=>$child))
        @endforeach
    </ol>
    @endif
</li>