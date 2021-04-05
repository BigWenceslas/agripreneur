@extends('template_home')

@section('title_page')<title>AGRIPRENEUR D'AFRIQUE</title>@endsection

@section('content_body')
	<!--::::: POST GALLARY AREA START :::::::-->
	<div class="post_gallary_area fifth_bg mb40">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-xl-8">
							<div class="slider_demo2">
								@if ($a_la_une)
								<div class="single_post post_type6 xs-mb30">
									<div class="post_img gradient1">
										<img src="{{'storage/'. $a_la_une->article_a_la_une->image}}" alt="{{$a_la_une->article_a_la_une->nom}}"><span class="tranding">
											<i class="fas fa-play"></i>
										</span>
									</div>
									<div class="single_post_text">
										<div class="meta meta_separator1"><a href="{{route('article_par_categorie',['slug'=> $a_la_une->article_a_la_une->slug])}}">{{$a_la_une->article_a_la_une->category->nom}}</a>
											<a href="#">{{$a_la_une->article_a_la_une->created_at->format('d M Y - H:i:s')}}</a>
										</div>
										<h4><a class="play_btn" href="video_post1.html">{{$a_la_une->article_a_la_une->nom}}</a></h4>
										<div class="space-10"></div>
										<p class="post-p">{!!$a_la_une->article_a_la_une->resume!!}</p>
									</div>
								</div>
								@endif
							</div>
						</div>
						@include('partials.articles_populaires')
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<!--::::: POST GALLARY AREA END :::::::-->

	<!--::::: FEATURE_POST AREA START :::::::-->
	@if ($articles_mois)
	<div class="feature_carousel_area mb40">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="heading">
						<h2 class="widget-title">{{$articles_mois->titre_bloc}}</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="feature_carousel owl-carousel nav_style1">
						<!--CAROUSEL START-->
						@foreach ($articles_mois->articles as $item)
						<div class="single_post post_type6 post_type7">
							<div class="post_img gradient1">
								<a href="{{route('details_article',['slug'=> $item->slug])}}">
									<img src="{{'storage/'. $item->image}}" alt="{{$item->nom}}">
								</a>
							</div>
							<div class="single_post_text">
								<div class="meta5">	<a href="{{route('article_par_categorie',['slug'=> $item->category->slug])}}">{{$item->category->nom}}</a>
									<a href="#">{{$item->created_at->format('d M Y - H:i:s')}}</a>
								</div>
								<h4>
									<a href="{{route('details_article',['slug'=> $item->slug])}}">{{$item->nom}}</a>
								</h4>
							</div>
						</div>
						@endforeach
					</div>
					<!--CAROUSEL END-->
				</div>
			</div>
		</div>
	</div>
	@endif
	<!--::::: FEATURE POST AREA END :::::::-->
	<!--::::: TRANDING CAROUSEL AREA START :::::::-->
	<div class="container">
		<div class="row">
			@if ($a_la_une)
			<div class="col-lg-6 col-lg-8">
				<h2 class="widget-title">{{$a_la_une->titre_bloc1}}</h2>
				<div class="carousel_post2_type3 nav_style1 owl-carousel">
					<!--CAROUSEL START-->
					<div class="single_post post_type3">
						<div class="post_img">
							<div class="img_wrap">
								<div class="video-responsive">
								<iframe width="560" height="400" src="{{'https://www.youtube.com/embed/'.$article1_bloc1->video_youtube}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
							</div>	<span class="tranding">
								<i class="fas fa-bolt"></i>
							</span>
						</div>
						<div class="single_post_text">
							<div class="meta3">	<a href="{{route('article_par_categorie',['slug'=> $article1_bloc1->category->slug])}}">{{$article1_bloc1->category->nom}}</a>
								<a href="#">{{$article1_bloc1->created_at->format('d M Y - H:i:s')}}</a>
							</div>
							<h4><a href="{{route('details_article',['slug'=> $article1_bloc1->slug])}}">{!!$article1_bloc1->resume!!}</a></h4>
							
						</div>
					</div>
					<div class="single_post post_type3">
						<div class="post_img">
							<div class="img_wrap">
								<div class="video-responsive">
								<iframe width="560" height="400" src="{{'https://www.youtube.com/embed/'.$article2_bloc1->video_youtube}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
							</div>	<span class="tranding">
								<i class="fas fa-bolt"></i>
							</span>
						</div>
						<div class="single_post_text">
							<div class="meta3">	<a href="{{route('article_par_categorie',['slug'=> $article2_bloc1->category->slug])}}">{{$article2_bloc1->category->nom}}</a>
								<a href="#">{{$article2_bloc1->created_at->format('d M Y - H:i:s')}}</a>
							</div>
							<h4><a href="{{route('details_article',['slug'=> $article2_bloc1->slug])}}">{!!$article1_bloc2->resume!!}</a></h4>
						</div>
					</div>
				</div>
				
				<div class="entertrainment_carousel mb30">
					<!--CAROUSEL START-->
					<div class="entertrainment_item">
						<div class="row">
							<div class="col-12">
								<div class="heading">
									<h2 class="widget-title">{{$a_la_une->titre_bloc2}}</h2>
								</div>
							</div>
						</div>
						<div class="row justify-content-center">
							<div class="col-md-6">
								<div class="single_post post_type3 mb30">
									<div class="post_img">
										<div class="img_wrap">
											<a href="#">
												<img src="{{'storage/'. $article1_bloc2->image}}" alt="{{$article1_bloc2->nom}}">
											</a>
										</div>
									</div>
									<div class="single_post_text">
										<div class="meta3">
											<a href="{{route('article_par_categorie',['slug'=> $article1_bloc2->category->slug])}}">{{$article1_bloc2->nom}}</a>
											<a href="#">{{$article1_bloc2->created_at->format('d M Y - H:i:s')}}</a>
										</div>
										<h4><a href="{{route('details_article',['slug'=> $article1_bloc2->slug])}}">{{$article1_bloc2->nom}}</a></h4>
										<div class="space-10"></div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="single_post post_type3 mb30">
									<div class="post_img">
										<div class="img_wrap">
											<a href="#">
												<img src="{{'storage/'. $article2_bloc2->image}}" alt="{{$article2_bloc2->nom}}">
											</a>
										</div>
									</div>
									<div class="single_post_text">
										<div class="meta3">
											<a href="{{route('article_par_categorie',['slug'=> $article2_bloc2->category->slug])}}">{{$article2_bloc2->nom}}</a>
											<a href="#">{{$article2_bloc2->created_at->format('d M Y - H:i:s')}}</a>
										</div>
										<h4><a href="{{route('details_article',['slug'=> $article2_bloc2->slug])}}">{{$article2_bloc2->nom}}</a></h4>
										<div class="space-10"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			@endif
			<div class="col-md-12 col-lg-4">
				@include('partials.socials_right_bar')
				<!--:::::: POST TYPE 2 START :::::::-->
				<div class="widget tab_widgets mb30">
					<h2 class="widget-title">ARTICLES RÉCENTS</h2>
					<div class="post_type2_carousel owl-carousel nav_style1">
						<!--CAROUSEL START-->
						@for ($i = 0; $i < $page_articles_recents; $i++)
						<div class="single_post2_carousel">
							@for ($l = 0; $l < 6; $l++)
							@if (isset($articles_recents[6*$i+$l]))
							<div class="single_post widgets_small type8">
								<div class="post_img">
									<div class="img_wrap">
										<img src="{{'storage/' . $articles_recents[6*$i+$l]->image}}" alt="{{$articles_recents[6*$i+$l]->nom}}">
									</div>	<span class="tranding">
										<i class="fas fa-bolt"></i>
									</span>
								</div>
								<div class="single_post_text">
									<div class="meta2">	<a href="{{route('article_par_categorie',['slug'=> $articles_recents[6*$i+$l]->slug])}}">{{$articles_recents[6*$i+$l]->category->nom}}</a>
										<a href="{{route('details_article',['slug'=> $articles_recents[6*$i+$l]->slug])}}">{{$articles_recents[6*$i+$l]->created_at->format('d M Y - H:i:s')}}</a>
									</div>
									<h4><a href="{{route('details_article',['slug'=> $articles_recents[6*$i+$l]->slug])}}">{{$articles_recents[6*$i+$l]->nom}}</a></h4>
								</div>
								<div class="type8_count">
									<h2>{{6*$i+$l+1}}</h2>
								</div>
							</div>
							<div class="space-15"></div>
							<div class="border_black"></div>
							<div class="space-15"></div>
							@endif
							@endfor
						</div>
						@endfor
					</div>
					<!--CAROUSEL END-->
				</div>
			</div>
		</div>
	</div>

	</div>

	@if ($cat_bas_page)	
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="col-12">
						<div class="heading">
							<h2 class="widget-title">{{$cat_bas_page->bas_bloc1->nom}}</h2>
						</div>
					</div>
					@foreach ($bas_bloc1 as $item)
					<div class="single_post widgets_small">
						<div class="post_img">
							<div class="img_wrap">
								<img src="{{'storage/' . $item->image}}" alt="{{$item->nom}}">
							</div>	<span class="tranding">
								<i class="fas fa-bolt"></i>
							</span>
						</div>
						<div class="single_post_text">
							<div class="meta2">	<a href="{{route('article_par_categorie',['slug'=> $cat_bas_page->bas_bloc3->slug])}}">{{$cat_bas_page->bas_bloc3->nom}}</a>
								<a href="{{route('details_article',['slug'=> $item->slug])}}">{{$item->created_at->format('d M Y - H:i:s')}}</a>
							</div>
							<h4><a href="{{route('details_article',['slug'=> $item->slug])}}">{{$item->nom}}</a></h4>
						</div>
					</div>
					<div class="space-15"></div>
					<div class="border_black"></div>
					<div class="space-15"></div>
					@endforeach
				</div>

				<div class="col-lg-4">
					<div class="col-12">
						<div class="heading">
							<h2 class="widget-title">{{$cat_bas_page->bas_bloc2->nom}}</h2>
						</div>
					</div>
					@foreach ($bas_bloc2 as $item)
					<div class="single_post widgets_small">
						<div class="post_img">
							<div class="img_wrap">
								<img src="assets/img/trending/transm1.jpg" alt="">
							</div>	<span class="tranding">
								<i class="fas fa-bolt"></i>
							</span>
						</div>
						<div class="single_post_text">
							<div class="meta2">	<a href="{{route('article_par_categorie',['slug'=> $cat_bas_page->bas_bloc3->slug])}}">{{$cat_bas_page->bas_bloc3->nom}}</a>
								<a href="{{route('details_article',['slug'=> $item->slug])}}">{{$item->created_at->format('d M Y - H:i:s')}}</a>
							</div>
							<h4><a href="post1.html">{{$item->nom}}</a></h4>
						</div>
					</div>
					<div class="space-15"></div>
					<div class="border_black"></div>
					<div class="space-15"></div>
					@endforeach
				</div>
				<div class="col-lg-4">
					<div class="col-12">
						<div class="heading">
							<h2 class="widget-title">{{$cat_bas_page->bas_bloc3->nom}}</h2>
						</div>
					</div>
					@foreach ($bas_bloc3 as $item)
					<div class="single_post widgets_small">
						<div class="post_img">
							<div class="img_wrap">
								<img src="assets/img/trending/transm1.jpg" alt="">
							</div>	<span class="tranding">
								<i class="fas fa-bolt"></i>
							</span>
						</div>
						<div class="single_post_text">
							<div class="meta2">	<a href="{{route('article_par_categorie',['slug'=> $cat_bas_page->bas_bloc3->slug])}}">{{$cat_bas_page->bas_bloc3->nom}}</a>
								<a href="{{route('details_article',['slug'=> $item->slug])}}">{{$item->created_at->format('d M Y - H:i:s')}}</a>
							</div>
							<h4><a href="post1.html">{{$item->nom}}</a></h4>
						</div>
					</div>
					<div class="space-15"></div>
					<div class="border_black"></div>
					<div class="space-15"></div>
					@endforeach
				</div>
			</div>
		</div>
	@endif
@endsection

@section('js_files')

@endsection