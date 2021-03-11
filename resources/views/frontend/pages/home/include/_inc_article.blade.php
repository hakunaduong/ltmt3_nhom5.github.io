<div class="articles">
	<div class="heading">
		<span class="title">CÂU CHUYỆN CỦA CADOSA</span>
		<span class="line">----■■■■----</span>
	</div>
	<div class="lists">
		@forelse($articlesHot as $article)
			<div class="item item-4">
				<div class="avatar">
					<a href="{{ route('get.blog.detail',$article->a_slug.'-'.$article->id) }}" title="{{ $article->a_name }}">
						<img data-src="{{ pare_url_file($article->a_avatar) }}" style="height: 200px;object-fit: cover;"
							 src="{{ image_default() }}" alt="{{ $article->pro_name }}" class="lazy">
					</a>
				</div>
				<h3 class="name"><a href="{{ route('get.blog.detail',$article->a_slug.'-'.$article->id) }}" title="{{ $article->a_name }}">{{ $article->a_name }}</a></h3>
				<div class="line">-----------------</div>
				<div class="auth">
					<span>Bởi <b>Admin</b></span>
				</div>
			</div>
		@empty
		@endforelse
		<div style="clear: both"></div>
	</div>
</div>