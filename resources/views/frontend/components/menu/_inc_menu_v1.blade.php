<div class="menu_v1">
    <div class="container box">
        <div class="menu_v1_left">
            <ul>
                @foreach(config('frontend.menu') as $item)
                    <li><a href="{{ route($item['route']) }}" title="{{ $item['name'] }}"
                           class="{{ \Route::currentRouteName() == $item['route'] ? 'active' : '' }}">{{ $item['name'] }}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="menu_v1_right">
            <a href="">Trở thành thành viên</a>
        </div>
    </div>
</div>
