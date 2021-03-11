<div class="products">
    <div class="heading">
        <span>{{ $title }}</span>
        <div class="line"></div>
    </div>
    <div class="lists">
        @forelse($products as $product)
            <div class="item item-6-10">
                <div class="avatar">
                    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id) }}" title="{{ $product->pro_name }}">
                        <img data-src="{{ pare_url_file($product->pro_avatar) }}" style="height: 200px;object-fit: cover;"
                             src="{{ image_default() }}" alt="{{ $product->pro_name }}" class="lazy">
                    </a>
                </div>
                <h3 class="name"><a href="" title="{{ $product->pro_name }}">{{ $product->pro_name }}</a></h3>
                <p class="price">
                    @if($product->pro_sale)
                        @php
                            $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                        @endphp
                        <span class="old">{{ number_format($product->pro_price,0,',','.') }}</span>
                        <span class="new">{{ number_format($price,0,',','.') }}</span>
                    @else
                        <span class="new">{{ number_format($product->pro_price,0,',','.') }}</span>
                    @endif
                    <span> / {{ get_unit()[$product->pro_unit] }}</span>
                </p>
                @if(isset($pay))
                    <p class="pay"><span>Đã bán {{ $product->pro_pay }}</span></p>
                @endif
                @if($product->pro_sale)
                    <span class="sale">-{{ $product->pro_sale }}%</span>
                @endif
                <p><a href="{{ route('get.shopping.add', $product->id) }}">Thêm giỏ hàng</a></p>
            </div>
        @empty
        @endforelse
        <div style="clear: both"></div>
    </div>
</div>