@extends('layouts.app_master_frontend')
@section('css')
    <?php $style = file_get_contents('css/home_insights.min.css');echo $style;?>
@stop
@section('content')
    @include('frontend.pages.home.include._inc_slide')
    <div class="container" id="before-slide">
        @include('frontend.pages.home.include._inc_service')
        @include('frontend.pages.home.include._inc_product',[
                'title' => 'Sản phẩm được mua nhiều nhất',
                'pay' => true,
                'products' => $productsPay
            ])
        @include('frontend.pages.home.include._inc_product',[
                'title' => 'Sản phẩm nổi bật',
                'products' => $productsHot
            ])
        @include('frontend.pages.home.include._inc_article')
    </div>
    @include('frontend.pages.home.include._inc_email')
@stop

@section('script')
    <script type="text/javascript">
		<?php $js = file_get_contents('js/home.js');echo $js;?>
    </script>
@stop
