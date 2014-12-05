<!-- h1 class="header1-title">Kategóriák</h1 -->
<div class="bread-crumbs">
	<a href="{{URL::action('home')}}"><span class="glyphicon glyphicon-home"></span></a>
	@for ($i = 0; $i < count($breadCrumbs); $i++)
        <span> &#8594; </span>
        @if($i < count($breadCrumbs) - 1)
        <a href="{{$breadCrumbs[$i]['url']}}">{{$breadCrumbs[$i]['name']}}</a>
        @else
        {{$breadCrumbs[$i]['name']}}
        @endif
    @endfor
</div>