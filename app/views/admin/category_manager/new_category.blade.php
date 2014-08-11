@extends('admin/layout/admin_layout')

@section('content')

<div id="left-column">
    @include('admin.includes.category_manager_menu')
</div>
<div id="right-column">

	<div id="step-1" class="progress-row active">
		<span class="progress-row-step">1. A ketgória neve</span>
		<input style="width: 50%" type="text" placeholder="Pl. Fűnyírók" />
	</div>
	
	
	<form style="text-align: left" method="POST" action="{{URL::action('AdminController@renameCategories')}}" enctype='application/json' accept-charset="UTF-8" >
	    <div id="step-2" class="progress-row" style="display: none">
		<span class="progress-row-step">2. A ketgória helye</span>
		    <ol>
		        @foreach (Menu::getRootCategories() as $category)
		            @include ('admin/includes/add_category_item', array('category'=>$category))
		        @endforeach
		    </ol>
		</div>
		
		<div id="step-3" class="progress-row" style="display: none">
		<span class="progress-row-step">3. Kész</span>
	    {{ Form::submit('Módosít!', array('class' => 'btn btn-default')) }}
	   	</div>
	</form>
	
	
	
</div>

<script>
$("#step-1 input").change(function(event) {
  if($("#step-1 input").val() != "")
  {
	  $("#step-1").removeClass("active");
	  $("#step-2").addClass("active");
	  $("#step-2").show();
  }  
});

$("#step-2 .insert-arrow").click(function() {
	console.log("hello");
	$("#step-2").removeClass("active");
	$("#step-3").addClass("active");
    $("#step-3").show();
});


</script>


@stop