@extends('layouts.admin')

@section('content')

<div id="admin-page">

<div style="position: relative">
	<div id="left-column">
		<ol>
			<li>Mutasd mind</li>
			@foreach (Menu::getRootCategories() as $category)
				@include ('admin.menu_item', array('category'=>$category))
			@endforeach
		</ol>

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

	</div>
	<div id="right-column">
		<h1 id="selectedCategory">Kategória: {{$current_category->name}}</h1> <br>
		<table class="inventory-items table">
			<tr>
				<th>Kép</th>
				<th>Cikkszám</th>
				<th>Név</th>
				<th class="description">Leírás</th>
				<th class="netto_price">Netto ár</th>
				<th class="price">Bruttó ár</th>
				<th class="sell_price">Eladási ár</th>
				<th class="profit_key">Haszon kulcs</th>
				<th>Kategória</th>
				<th>Láthatóság</th>
				<th>Müveletek</th>
			</tr>

			@foreach ($products as $product)
				@if($product->hasOptions())
					@foreach ($product->options as $option)
					<tr>
						<th><img style="width: 50px;" src="{{$product->getFirstImage()}}" /></th>
						<th>{{ $option->code}}</th>
						<th>{{ $product->name}}</th>
						<th class="description">{{ $option->description}}</th>
						<th class="netto_price">{{ $option->price}}</th>
						<th class="price">{{ round($option->price * 1.27) }}</th>
						<th class="sell_price">{{ round($product->displayedPrice($option->id))}}</th>
						<th class="profit_key">{{ round($product->profit_key, 2) }}</th>
						<th>{{{ $product->category->name or '---' }}}</th>
						<th>{{{ $product->display }}}</th>
						<th>
							<a href="{{ URL::action('AdminController@editProduct', $product->id)}}">Módosít</a>
							<a href="{{ URL::action('AdminController@removeProduct', $product->id)}}">Törlés</a>
						</th>
					</tr>	
					@endforeach
				@else
				<tr>
					<th><img style="width: 50px;" src="{{$product->getFirstImage()}}" /></th>
					<th>{{ $product->code}}</th>
					<th>{{ $product->name}}</th>
					<th class="description">{{ $product->description}}</th>
					<th class="netto_price">{{ $product->price}}</th>
					<th class="price">{{ round($product->price * 1.27) }}</th>
					<th class="sell_price">{{ round($product->displayedPrice()) }}</th>
					<th class="profit_key">{{ round($product->profit_key, 2) }}</th>
					<th>{{{ $product->category->name or '---' }}}</th>
					<th>{{{ $product->display }}}</th>
					<th>
						<a href="{{ URL::action('AdminController@editProduct', $product->id)}}">Módosít</a>
						<a href="{{ URL::action('AdminController@removeProduct', $product->id)}}">Törlés</a>
					</th>
				</tr>
				@endif
			@endforeach
		</table>
	</div>
</div>

@stop