<div id="leftMenu">
	<h1>Kategóriák</h1>

	<ol>
		@foreach (Menu::allCategories() as $category)
            @include ('includes.leftmenu_item', array('category'=>$category))
		@endforeach
	</ol>
</div>