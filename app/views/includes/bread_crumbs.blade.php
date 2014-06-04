<div class="bread-crumbs">
	<a href="{{URL::action('home')}}"><span class="glyphicon glyphicon-home"></span></a>
	@foreach($breadCrumbs as $crumb)
		<span class="glyphicon glyphicon-chevron-right"></span>
		<a href="{{$crumb['url']}}">{{$crumb['name']}}</a>
	@endforeach
</div>