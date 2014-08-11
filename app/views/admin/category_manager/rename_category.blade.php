@extends('admin/layout/admin_layout')

@section('content')

<div id="left-column">
    @include('admin.includes.category_manager_menu')
</div>
<div id="right-column">
	<form method="POST" action="{{URL::action('AdminController@renameCategories')}}" enctype='application/json' accept-charset="UTF-8" >
    <ol>
        @foreach (Menu::getRootCategories() as $category)
            @include ('admin/includes/menu_edit_item', array('category'=>$category))
        @endforeach
    </ol>
    {{ Form::submit('Módosít!', array('class' => 'btn btn-default')) }}
	{{ Form::close() }}
    
    
</div>

@stop