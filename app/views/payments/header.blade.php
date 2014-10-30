<ul class="step group" id="order_step">
    <li id="step-bar-1" class="@if ($step == 1)step_current  @else step_done @endif">
        @if ($step == 1)
            <span>1. Vásárlás összesítés</span>
        @else
            <a href="{{URL::route('order', array('step' => 1))}}">1. Vásárlás összesítés</a>
        @endif
    </li>
    <li id="step-bar-2" class="@if ($step == 2)step_current  @elseif ($step < 2) step_todo @else step_done @endif">
        @if ($step < 3)
            <span>2. Adatok megadása</span>
        @else
            <a href="{{URL::route('order', array('step' => 2))}}">2. Adatok megadása</a>
        @endif
    </li>
    <li id="step-bar-3" class="@if ($step == 3)step_current  @elseif ($step < 3) step_todo @else step_done @endif" style="width: 244px;">
        @if ($step < 4)
            <span>3. Szállítási/Számlázási adatok</span>
        @else
            <a href="{{URL::route('order', array('step' => 3))}}">3. Szállítási/Számlázási adatok</a>
        @endif
    </li>
    <li id="step-bar-4" class="@if ($step == 4)step_current  @elseif ($step < 4) step_todo @else step_done @endif">
        @if ($step < 5)
            <span>4. Szállítás</span>
        @else
            <a href="{{URL::route('order', array('step' => 4))}}">4. Szállítás</a>
        @endif
    </li>
    <li id="step-bar-5" class="@if ($step == 5)step_current  @else step_todo @endif">
        <span>5. Fizetés</span>
    </li>
</ul>