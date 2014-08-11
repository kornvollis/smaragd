<ul class="nav nav-pills nav-stacked">
	<li id="new-cat"><a href="{{ URL::action('AdminController@showNewCategory')}}">Új kategória</a></li>
	<li id="rename-cat"><a href="{{ URL::action('AdminController@showRenameCategory')}}">Átnvezés</a></li>
	<li id="reorder-cat"><a href="{{ URL::action('AdminController@showReorderCategory')}}">Rendezés</a></li>
</ul>

<script>
	$("#{{{$active_link}}}").addClass("active");
</script>