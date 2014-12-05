<div id="cart-info">
    <p class="header">Kosár
        @if(count(SCart::getItems()) == 0)
        (üres)
        @endif
    </p>

    @foreach (SCart::getItems() as $item)
    <div class="cart-info-item">
        <img src=""/>
    </div>
    @endforeach

</div>
