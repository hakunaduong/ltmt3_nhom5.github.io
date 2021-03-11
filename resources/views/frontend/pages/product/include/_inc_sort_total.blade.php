<div class="order-tab">
    <span class="total-prod">{{ __('category.total') }}: {{ $products->total() }} {{ __('category.product') }}</span>
    <div class="sort">
        <div class="item">
            <span class="title js-show-sort">Sort <i class="fa fa-caret-down"></i></span>
            <ul>
                <li><a class="{{ Request::get('sort') == 'desc' ? "active" : "" }}" href="{{ request()->fullUrlWithQuery(['sort'=> 'desc']) }}">Latest</a></li>
                <li><a class="{{ Request::get('sort') == 'asc' ? "active" : "" }}" href="{{ request()->fullUrlWithQuery(['sort'=> 'asc']) }}">Oldest</a></li>
            </ul>
        </div>
    </div>
</div>