<div id="header">
	<div id="header-logo"></div>
    
    <nav class="navbar navbar-default" role="navigation">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li><a href="{{URL::route('home')}}">Főoldal</a></li>
                <li><a href="{{URL::route('about')}}">Rólunk</a></li>
                <li><a href="{{URL::route('products')}}">Termékek</a></li>
                <li><a href="{{URL::route('shippinginfo')}}">Szállítás/Fizetés</a></li>
            </ul>
            <a class="shop-cart-icon " href="/smaragd/cart"><span class="glyphicon glyphicon-shopping-cart"></span></a>
            <form style="display: inline-block; float: right; margin-top: 8px;" action="/smaragd/searchresult" method="post" role="search">
            	<input style="display:inline-block; width: 160px;" type="text" name="search" class="form-control" placeholder="Keresek valamit...">
	            <button type="submit" class="btn btn-default">Keresés</button>
            </form>
        </div><!-- /.navbar-collapse -->
    </nav>
</div>