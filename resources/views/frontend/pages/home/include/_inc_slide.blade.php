<div class="container box-content-slide" style="display: flex">
    <div class="left" style="width: 250px">
        <ul>
            @foreach($categories as $item)
                <li>
                    <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}">{{ $item->c_name }}</a>
                </li>
            @endforeach
        </ul>
    </div>
    <div class="right" style=" width: calc(100% - 250px);">
        <div id="content-slide">
            <div id="slider">
                <div class="imageSlide js-banner owl-carousel">
                    @foreach($slides as $item)
                        <div>
                            <a href="{{ $item->sd_link }}" title="{{ $item->sd_title }}">
                                <img alt="Đồ án tốt nghiệp" src="{{ pare_url_file($item->sd_image) }}"  style="max-width: 100%;height: 300px;" class="" />
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>