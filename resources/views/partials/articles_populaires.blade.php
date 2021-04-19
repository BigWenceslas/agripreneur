						<div class="col-xl-4">
							<div class="widget_tab md-mt-30">
								<ul class="nav nav-tabs">
									<li><a class="active" data-toggle="tab" href="#post1">ARTICLES POPULAIRES</a>
									</li>
								</ul>
								<div class="tab-content">
									<div id="post1" class="tab-pane fade show in active">
										<div class="widget tab_widgets mb30">
											@foreach ($articles_populaires as $item)
											<div class="single_post widgets_small">
												<div class="post_img">
													<div class="img_wrap">
														<a href="#">
															<img src="{{'storage/'. $item->image}}" alt="{{$item->image}}">
														</a>
													</div>
												</div>
												<div class="single_post_text">
													<div class="meta2 meta_separator1">	<a href="{{route('article_par_categorie',['slug'=> $item->category->slug])}}">{{$item->category->nom}}</a>
														<a href="{{route('details_article',['slug'=> $item->slug])}}">{{$item->created_at->format('d M Y - H:i:s')}}</a>
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
						</div>