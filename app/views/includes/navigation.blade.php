<div id="navigation">
    <p class="header">Kategóriák</p>

    <ul id="menu" class="left-navigation">
        @foreach (Menu::getRootCategories() as $category)
            <li><a href="{{URL::route('products', array('id' => $category->id))}}"> {{$category->name}} </a>
            @if($category->hasChild())
                <img src="{{URL::asset('images/navigation/down-arrow.png')}}" />
                <ul>
                @foreach (Menu::getAllChildren($category) as $subCategory)
                    <li><a href="{{URL::route('products', array('id' => $subCategory->id))}}"> {{$subCategory->name}} </a></li>
                @endforeach
                </ul>
            @endif
            </li>
        @endforeach
    </ul>
</div>

<script>
$(function() {
    $("#menu").menu({ position: { my: "left top", at: "left+5 top+14"} });
});
</script>