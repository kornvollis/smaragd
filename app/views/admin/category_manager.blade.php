@extends('admin/layout/admin_layout')

@section('content')

<div id="left-column">
    <ul class="nav nav-pills nav-stacked">
        <li><a href="{{ URL::action('AdminController@showNewCategory')}}">Új kategória</a></li>
        <li><a href="#">Átnvezés</a></li>
        <li><a href="#">Rendezés</a></li>
    </ul>
</div>
<div id="right-column">

</div>


@stop