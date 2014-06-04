<div id="carousel" class="carousel slide">
    <!-- Indicators 
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>
    -->
    
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
          <div class="item active">
          	<a href="{{URL::action('info', array('id'=>90))}}">
            	<img data-src="holder.js/900x500/auto/#666:#444/text:Second slide" alt="First slide" src="{{URL::asset('images/carousel/frissito_szett_kep.JPG')}}">
            </a>
          </div>
    </div>
    
    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="icon-next"></span>
    </a>
</div>