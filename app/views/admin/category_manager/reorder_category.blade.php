@extends('...layout.master')

@section('content')
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<script>
  $(function() {
    $( "#sortable" ).sortable();
    $( "#sortable" ).disableSelection();
  });
</script>
  
<div id="left-column">
    @include('admin.includes.category_manager_menu')
</div>
<div id="right-column">
	<ol id="sortable" class="ui-sortable" >
        @foreach (Menu::getRootCategories() as $category)
            @include ('admin/includes/menu_reorder_item', array('category'=>$category))
        @endforeach
    </ol>
    
    <a id="save" style="margin: 40px;">Mentés</a>
</div>

<script type="text/javascript">

var categories = [];

$("#save").click(saveRequest);

$("#sortable li").each(function(index) {
	// console.log($(this).data("id"));

	var category = {};
	category.id = $(this).data("id");
	category.subcategories = getSubCategories(category.id, []);
	
	categories[index] = category;
});

function getSubCategories(id, array) {
	var subCategories = $("li[data-id='" + id + "'] li");

	subCategories.each(function(index) {
		var category = {};
		category.id = $(this).data("id");
		category.subcategories = getSubCategories(category, []);

		array[index] = category;
	});

	return array;
}

function saveRequest() {
	$.ajax({
	    type: "POST",
	    url: "{{URL::action('CategoryManagerController@postApplyReorder')}}",
	    data: { orders : categories }
	})
	.done(function( msg ) {
	    alert( "Data Saved: " + msg );
	});
}

</script>

@stop