@extends('template_home')

@section('title_page')<title>AGRIPRENEUR D'AFRIQUE</title>@endsection

@section('content_body')
	<!--::::: ARCHIVE AREA START :::::::-->
	<div class="archives post post1 padding-top-30">
		<div class="container">
			<div class="space-30"></div>
			<div class="row">
				<div class="col-md-6 col-lg-8">
					
					<div class="single_post_heading">
						<h3>{{$article->nom}}</h3>
						<div class="space-10"></div>
					</div>
					<img src="{{asset('storage/'.$article->image)}}" alt="{{$article->nom}}" loading="lazy">
					<div class="space-20"></div>
					<div class="row">
						<div class="col-lg-6 align-self-center">
							<div class="author">
								<div class="author_img">
									<div class="author_img_wrap">
										<img src="@if($article->auteur){{asset('storage/'.$article->auteur->avatar)}}@else {{asset('assets/img/author/author2.png')}}@endif" 
										alt="@if($article->auteur){{$article->auteur->name}}@endif" loading="lazy">
									</div>
								</div>
									<a href="#">@if($article->auteur){{$article->auteur->name}}@endif</a>
								<ul>
									<li>
										<a href="#">{{$article->created_at->format('d-M-Y H:i:s')}}</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-6 align-self-center">
							<div class="author_social inline text-right">
								<ul>
									<li><a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->instagram}}@endif"><i class="fab fa-instagram"></i></a>
									</li>
									<li><a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->facebook}}@endif"><i class="fab fa-facebook-f"></i></a>
									</li>
									<li><a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->youtube}}@endif"><i class="fab fa-youtube"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="space-20"></div>
					{!!$article->contenu!!}
					<div class="space-40"></div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="widget_tab md-mt-30">
						<ul class="nav nav-tabs">
							<li><a class="active" data-toggle="tab" href="#post1">ARTICLES POPULAIRES</a>
							</li>
						</ul>
						<div class="tab-content">
							<div id="post1" class="tab-pane fade in active show">
								<div class="widget tab_widgets mb30">
									@foreach ($articles_populaires as $item)
									<div class="single_post widgets_small">
										<div class="post_img">
											<div class="img_wrap">
												<a href="#">
													<img src="{{asset('storage/'. $item->image)}}" alt="{{$item->image}}" loading="lazy">
												</a>
											</div>
										</div>
										<div class="single_post_text">
											<div class="meta2 meta_separator1">
												<a href="@if ($item->category){{route('article_par_categorie',['slug'=> $item->category->slug])}}@endif">@if ($item->category){{$item->category->nom}}@endif</a>
											</div>
											<h4><a href="{{route('details_article',['slug'=> $item->slug])}}">{{Str::limit($item->nom, 50, '...')}}</a></h4>
										</div>
									</div>
									<div class="space-15"></div>
									<div class="border_black"></div>
									@endforeach
								</div>
							</div>
						</div>
					</div>
					<div class="follow_box widget mb30">
						@include('partials.socials_right_bar')
					</div>
					<!--:::::: POST TYPE 3 START :::::::-->
					{{-- <div class="carousel_post_type3_wrap mb30">
						<h2 class="widget-title">ESPACE PUBLICITAIRE</h2>
						<div class="carousel_post_type3 nav_style1 owl-carousel">
							<div class="single_post post_type3">
								<div class="post_img">
									@if ($espace_publicitaire)
										<img src="{{asset('storage/'. $espace_publicitaire->image_article)}}" alt="" loading="lazy">
									@else
										<img src="{{asset('assets/img/bg/video4.jpg')}}" alt="" loading="lazy">
									@endif
									<span class="tranding">
										<i class="fas fa-bolt"></i>
									</span>
								</div>
							
							</div>
						
						</div>
					</div> --}}
					
					<!--:::::: POST TYPE 4 END :::::::-->
					{{-- <div class="box widget news_letter mb30">
						<h2 class="widget-title">News Letter</h2>
						<p>Your email address will not be this published. Required fields are News Today.</p>
						<div class="space-20"></div>
						<div class="signup_form">
							<form action="index.html">
								<input class="signup" type="email" placeholder="Your email address">
								<input type="button" class="cbtn" value="sign up">
							</form>
							<div class="space-10"></div>
							<p>We hate spam as much as you do</p>
						</div>
					</div> --}}
				</div>
			</div>
		</div>
	</div>
@endsection

@section('js_files')

@endsection