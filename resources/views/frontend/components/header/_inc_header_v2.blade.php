<!-- <div class="header_v2">
    <div class="container">
        <div class="flex content">
            <div class="logo">
                <a href="/" title="Trang chủ">
                    <img src="{{ url('images/logo') }}/{{ config('app.name') }}.png" alt="">
                </a>
            </div>
            <div class="form-search">
                <form action="">
                    <input type="text" class="form-control" placeholder="Từ khoá tìm kiếm ...">
                    <button><i class="fa fa-search"></i></button>
                </form>
            </div>
            <div class="right">
                <div class="auth">
                    <a href="">
                        <img src="{{ image_default()  }}" alt="">
                    </a>
                    <a href="">Đăng nhập</a>
                </div>
                <div class="cart">
                    <a href="" title="Cart">
                        <i class="fa fa-shopping-bag"></i>
                        <span class="text">
                            <span class="">Cart ({{ \Cart::count() }})</span>
                            <span></span>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div> -->
<div class="header_v2">
    <div class="container">
        <div class="flex content">
            <div class="logo">
                <a href="/" title="Trang chủ">
                    <img src="{{ url('images/logo') }}/{{ config('app.name') }}.png" alt="">
                </a>
            </div>
            <div class="form-search">
                <form action="{{ route('get.search') }}">
                    <input type="text" name="k" value="{{ Request::get('k') }}" class="form-control" placeholder="Từ khoá tìm kiếm ...">
                    <button><i class="fa fa-search"></i></button>
                </form>
            </div>
            <div class="right">
                <div class="auth">
                    @if(get_data_user('web'))
                    <a href="{{ route('get.user.dashboard') }}">
                        <img src="{{ pare_url_file(get_data_user('web','avatar'))  }}" alt="">
                    </a>
                
                    @else 
                    <a href="">
                        <img src="{{ image_default()  }}" alt="">
                    </a>
                    <a href="{{ route('get.login') }}">Đăng nhập</a>
                    @endif
                </div>
                <div class="cart">
                    <a href="{{ route('get.shopping.list') }}" title="Cart">
                        <i class="fa fa-shopping-bag"></i>
                        <span class="text">
                            <span class="">Cart ({{ \Cart::count() }})</span>
                            <span></span>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>