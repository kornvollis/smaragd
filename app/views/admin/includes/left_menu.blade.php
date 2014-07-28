<h1>Kategóriák</h1>
<ol>
    <li>Mutasd mind</li>
    @foreach (Menu::getRootCategories() as $category)
    @include ('admin/menu_item', array('category'=>$category))
    @endforeach
</ol>
<!--
{{ Form::open(array('action' => 'AdminController@addCategory')) }}
    {{ Form::label('name', 'Új kategória') }}
    {{ Form::text('name', '', array('class' => 'form-control')) }}
    <br>
    {{ Form::label('position', 'Pozíció') }}
    {{ Form::radio('position', 'first') }} Első
    {{ Form::radio('position', 'last', true) }} Utolsó
    <br>
    {{ Form::label('parent_id', 'Hova') }}
    {{ Form::select('parent_id', Menu::selectArray(), '-1', array('class' => 'form-control')) }}

    {{ Form::submit('Hozzáad!') }}
{{ Form::close() }}
<br><br><br>
{{ Form::open(array('action' => 'AdminController@editCategory')) }}
    {{ Form::label('id', 'Átnevez') }}
    {{ Form::select('id', Menu::selectArray(false), null, array('class' => 'form-control')) }}
    {{ Form::text('name', '', array('class' => 'form-control')) }}
    {{ Form::submit('Átnevez!', array('class' => 'form-control')) }}
{{ Form::close() }}
-->