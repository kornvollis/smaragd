<ol class="left-navigation">
    @foreach (Menu::getRootCategories() as $category)
        <li><a href="{{URL::route('products', array('id' => $category->id))}}"> {{$category->name}} </a>
        @if($category->hasChild())
            <ol>
            @foreach (Menu::getAllChildren($category) as $subCategory)
                <li><a href="{{URL::route('products', array('id' => $subCategory->id))}}"> {{$subCategory->name}} </a></li>
            @endforeach
            </ol>
        @endif
        </li>
    @endforeach
</ol>