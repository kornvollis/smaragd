@extends('admin/layout/admin_layout')

@section('content')

<div id="left-column">
    <ul class="nav nav-pills nav-stacked">
        <li><a href="{{ URL::action('AdminController@showNewCategory')}}">Új kategória</a></li>
        <li class="active"><a href="{{ URL::action('AdminController@showRenameCategory')}}">Átnvezés</a></li>
        <li><a href="{{ URL::action('AdminController@showReorderCategory')}}">Rendezés</a></li>
    </ul>
</div>
<div id="right-column">
    <ol>
        @foreach (Menu::getRootCategories() as $category)
            @include ('admin/includes/menu_edit_item', array('category'=>$category))
        @endforeach
    </ol>
</div>


@stop