@extends('admin/layout/admin_layout')

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
</div>


@stop