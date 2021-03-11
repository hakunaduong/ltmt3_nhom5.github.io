<div class="icon_shopping_cart">
    <a href="" title="Cart">
        <i class="fa fa-shopping-bag"></i>
        <span class="text">
            <span class="">Cart ({{ \Cart::count() }})</span>
            <span></span>
        </span>
    </a>
    <p>{{ str_replace(',', '.', \Cart::subtotal(0)) }} <b>VNĐ</b></p>
</div>