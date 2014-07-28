<h1 class="header1-title">Kategóriák</h1>
<div class="bread-crumbs">
	<a href="{{URL::action('home')}}"><span class="glyphicon glyphicon-home"></span></a>
	@foreach($breadCrumbs as $crumb)
		<span> &#8594; </span>
		<a href="{{$crumb['url']}}">{{$crumb['name']}}</a>
	@endforeach
</div>