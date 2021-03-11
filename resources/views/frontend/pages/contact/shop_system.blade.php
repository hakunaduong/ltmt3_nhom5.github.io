@extends('layouts.app_master_frontend')
@section('css')
    <?php $style = file_get_contents('css/static.min.css');echo $style;?>style
@stop
@section('content')
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li itemscope="" >
                    <a itemprop="url" href="/" title="Home"><span itemprop="title">Home</span></a>
                </li>
                <li itemscope="" >
                    <a itemprop="url" href="#" title="Đồng hồ chính hãng"><span itemprop="title">Hệ thống cửa hàng</span></a>
                </li>
            </ul>
        </div>
        <div class="shop_system">
            @for( $i = 1; $i <= 10 ; $i ++)
                <div class="item">
                    <a href="">
                        <i class="fa fa-map-pin"></i>
                        <span>Chi nhánh {{ $i }}</span>
                    </a>
                    <a href="">
                        <i class="fa fa-map-marker"></i>
                        <span>số 10 trần phú (Từ 8:00 - 22:00)</span>
                    </a>
                    <a href="">
                        <i class="fa fa-volume-control-phone"></i>
                        <span>0986.420.994</span>
                    </a>
                </div>
            @endfor
        </div>
    </div>
@endsection
