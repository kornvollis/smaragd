<li><span class="insert-arrow glyphicon glyphicon-arrow-left"></span></li>
<li>{{$category->name}}
    @if ($category->hasChild() )
    <ol>
        @foreach (Menu::getFirstChildCategories($category) as $child)
        	@include ('admin/includes/add_category_item', array('category'=>$child))
        @endforeach
    </ol>
    @else
    	<ol>
    		<li>
    			<span class="insert-arrow glyphicon glyphicon-arrow-down"></span>
    		</li>
    	</ol>
    @endif
</li>
@if (Menu::isLastCategory($category))
<li><span class="insert-arrow glyphicon glyphicon-arrow-left"></span></li></li>
@endif