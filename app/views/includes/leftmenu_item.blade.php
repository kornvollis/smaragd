<li><a href="{{URL::route('products', array('id' => $category->id))}}"> {{$category->name}} </a>
    @if ($category->hasChild() )
    <ol>
        @foreach (Menu::getFirstChildCategories($category) as $child)
        @include ('includes.leftmenu_item', array('category'=>$child))
        @endforeach
    </ol>
    @endif
</li>