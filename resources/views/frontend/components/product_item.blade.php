@if (isset($product))
    <div class="product-item">
        <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title="" class="avatar image contain">
            <img alt="{{  $product->pro_name }}" data-src="{{ pare_url_file($product->pro_avatar) }}" src="{{  asset('images/no-image') }}-{{ config('app.name') }}.jpg" class="lazyload lazy">
        </a>
        <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}"
         title="{{  $product->pro_name }}" class="title">
            <h3>{{  $product->pro_name }}</h3>
        </a>
        @if ($product->pro_number <= 0)
            <p style="position: absolute;right: 10px;color: #E91E63;font-weight: bold;">{{ __('product.amount') }}</p>
        @endif
{{--        <p class="rating">--}}
{{--            <span>--}}
{{--                @php --}}
{{--                    $iactive = 0;--}}
{{--                    if ($product->pro_review_total){--}}
{{--                        $iactive = round($product->pro_review_star / $product->pro_review_total,2);    --}}
{{--                    }--}}
{{--                    --}}
{{--                @endphp--}}
{{--                @for($i = 1 ; $i <= 5 ; $i ++)--}}
{{--                    <i class="la la-star {{ $i <= $iactive ? 'active' : ''  }}"></i>--}}
{{--                @endfor--}}
{{--            </span>--}}
{{--        </p>--}}
        @if ($product->pro_sale)
            <p style="text-align: center">
                <span class="sale">-{{ $product->pro_sale }}%</span>
                @php 
                    $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                @endphp
                <span class="price">{{  number_format($price,0,',','.') }} đ</span>
                <span class="price-sale">{{ number_format($product->pro_price,0,',','.') }} đ</span>
                <span> / {{ get_unit()[$product->pro_unit] }}</span>
            </p>
        @else 
            <p class="price" style="text-align: center">{{  number_format($product->pro_price,0,',','.') }} đ / {{ get_unit()[$product->pro_unit] }}</p>
        @endif
        <p class="text-center"><a href="{{ route('get.shopping.add', $product->id) }}">Thêm giỏ hàng</a></p>
    </div>
@endif