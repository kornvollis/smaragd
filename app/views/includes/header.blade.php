<div id="header">
	<div id="header-logo"></div>
    
    <nav class="navbar navbar-default" role="navigation">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li><a href="{{URL::route('home')}}"><span class="glyphicon glyphicon-home" style="font-size: 20px;"></span></a></li>
                <li><a href="{{URL::route('products')}}">Termékek</a></li>
                <li><a href="{{URL::route('shippinginfo')}}">Szállítás/Fizetés</a></li>
                <li><a href="{{URL::route('about')}}">Rólunk</a></li>
            </ul>
            <a class="shop-cart-icon " href="{{URL::route('cart')}}"><span class="glyphicon glyphicon-shopping-cart"></span></a>
            <form style="display: inline-block; float: right; margin-top: 8px;" action="{{ URL::route('search-results') }}" method="post" role="search">
            	<input id="ta" style="display:inline-block; width: 320px;" type="text" name="search" class="form-control" placeholder="Keresek egy ...">
	            <button onclick="return validateSearch();" id="search-submit" type="submit" class="btn btn-default" style="height: 34px;"><span class="glyphicon glyphicon-search"></span></button>
            </form>
        </div><!-- /.navbar-collapse -->
    </nav>
</div>

<script type="text/javascript">

function validateSearch() {

	if($("#ta").val() == "")
	{
 		return false;
	}
	
	return true;
}


var substringMatcher = function(strs) {
	return function findMatches(q, cb) {
		var matches, substringRegex;
		matches = [];
		substrRegex = new RegExp(q, 'i');
		$.each(strs, function(i, str) {
		if (substrRegex.test(str)) {
		matches.push({ value: str });
		}
		});
		 
		cb(matches);
	};
};

var allProducts = {{Product::all()}} ;
var products = new Array();
for (var i = 0; i < allProducts.length; i++) { 
    products.push(allProducts[i].name);
}

$('#ta').on("typeahead:selected", function() {
	$("#search-submit").click();
});

$('#ta').typeahead({
	hint: true,
	highlight: true,
	minLength: 1
},
{
	name: 'products',
	displayKey: 'value',
	source: substringMatcher(products)
});
</script>