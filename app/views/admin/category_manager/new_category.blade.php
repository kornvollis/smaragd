@extends('admin/layout/admin_layout')

@section('content')

<div id="left-column">
    @include('admin.includes.category_manager_menu')
</div>
<div id="right-column">
	
	<form style="text-align: left" method="POST" action="{{URL::action('CategoryManagerController@postAddCategory')}}" enctype='application/json' accept-charset="UTF-8" >
		<div id="step-1" class="progress-row active">
			<span class="progress-row-step">1. A ketgória neve</span>
			<input id="category-name" name="category_name" style="width: 50%" type="text" placeholder="Pl. Fűnyírók" />
		</div>
	
	    <div id="step-2" class="progress-row">
		<span class="progress-row-step">2. A ketgória helye</span>
			<div style="display: inline-block; text-align: left;">
			<input type="radio" name="position" value="before">Elé<br>
    		{{ Form::select('category_id', Menu::selectArray(false), null,  array('class' => 'form-control', 'style' => 'display:inline-block;width: 67%;')) }} <input type="radio" name="position" value="sub">Al kategória<br>
    		<input type="radio" name="position" value="after" checked>Mögé<br>
    		</div>
		</div>
		
		<div id="step-3" class="progress-row">
		<span class="progress-row-step">3. Hozzáad</span>
	    {{ Form::submit('Módosít!', array('class' => 'btn btn-default')) }}
	   	</div>
	</form>
	
	
	
</div>

<script>
/*
$("#step-1 input").change(function(event) {
  if($("#step-1 input").val() != "")
  {
	  $("#step-1").removeClass("active");
	  $("#step-2").addClass("active");
	  $("#step-2").show();
  }  
});

$("#step-2 .insert-arrow").click(function(event) 
{
	// debugger;
	$(event.currentTarget).after($("#category-name").val());
	$(event.currentTarget).remove();
	
	$("#step-2").removeClass("active");
	$("#step-3").addClass("active");
    $("#step-3").show();
});
*/

</script>


@stop