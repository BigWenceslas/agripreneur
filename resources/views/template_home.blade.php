<!DOCTYPE html>
<html lang="fr">

<head>
    <!-- META -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--::::: FABICON ICON :::::::-->
	<link rel="icon" href="{{asset('assets/img/agri.jpg')}}">
	<!--::::: ALL CSS FILES :::::::-->
	<link rel="stylesheet" href="{{asset('assets/css/plugins/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('assets/css/plugins/animate.min.css')}}">
	<link rel="stylesheet" href="{{asset('assets/css/plugins/fontawesome.css')}}">
	<link rel="stylesheet" href="{{asset('assets/css/plugins/modal-video.min.css')}}">
	<link rel="stylesheet" href="{{asset('assets/css/plugins/owl.carousel.css')}}">
	<link rel="stylesheet" href="{{asset('assets/css/plugins/slick.css')}}">
	<link rel="stylesheet" href="{{asset('assets/css/plugins/stellarnav.css')}}">
	<link rel="stylesheet" href="{{asset('assets/css/theme.css')}}">
    @yield('head_file')
	@yield('title_page')
</head>
<body class="theme-1">
        <!--::::: PRELOADER START :::::::-->
	{{-- <div class="preloader">
		<div>
			<div class="nb-spinner"></div>
		</div>
	</div> --}}
	<!--::::: PRELOADER END :::::::-->

	<!--::::: SEARCH FORM START:::::::-->
	<div class="searching">
		<div class="container">
			<div class="row">
				<div class="col-8 text-center m-auto">
					<div class="v1search_form">
						<form action="{{route('recherche')}}" method="POST">
							@csrf
							<input type="search" name="search" placeholder="Faites une recherche ici...">
							<button type="submit" class="cbtn1">Recherche</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="close_btn">	<i class="fal fa-times"></i>
		</div>
	</div>
	<!--:::::SEARCH FORM END :::::::-->

	<!--::::: TOP BAR START :::::::-->
	<div class="topbar white_bg" id="top">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-8 col-lg-8">
					<div class="newsprk_nav stellarnav">
						<ul id="newsprk_menu">
							{{-- @foreach ($cat_header as $cat)
								<li><a href="{{route('article_par_categorie',['slug'=>$cat->slug])}}">{{$cat->nom}}</i></a></li>
							@endforeach --}}
								@if ($menu1)
									@if ($menu1->getCategorie_1)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu1->getCategorie_1->slug])}}">{{$menu1->getCategorie_1->nom}}</i></a></li>
									@endif
									
									@if ($menu1->getCategorie_2)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu1->getCategorie_2->slug])}}">{{$menu1->getCategorie_2->nom}}</i></a></li>
									@endif
									
									@if ($menu1->getCategorie_3)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu1->getCategorie_3->slug])}}">{{$menu1->getCategorie_3->nom}}</i></a></li>
									@endif
									
									@if ($menu1->getCategorie_4)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu1->getCategorie_4->slug])}}">{{$menu1->getCategorie_4->nom}}</i></a></li>
									@endif
									
									@if ($menu1->getCategorie_5)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu1->getCategorie_5->slug])}}">{{$menu1->getCategorie_5->nom}}</i></a></li>
									@endif
									
									@if ($menu1->getCategorie_6)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu1->getCategorie_6->slug])}}">{{$menu1->getCategorie_6->nom}}</i></a></li>
									@endif
								@endif
							<li><a target="_blank" href="whatsapp://send?abid=+237656801098&text=Bonjour">Nous suivre sur Whatsapp</a></li>
                            <li class="search_btn"><i class="far fa-search"></i>
						</ul>
					</div>
				</div>
				<div class="col-4 col-lg-8=4 align-self-center">
					<div class="top_date_social text-right">
					
						<div class="social1">
							<ul class="inline">
								<li>
									<a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->twitter}}@endif"><i class="fab fa-twitter"></i></a>
								</li>
								<li>
									<a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->facebook}}@endif"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li>
									<a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->youtube}}@endif"><i class="fab fa-youtube"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--::::: TOP BAR END :::::::-->

	<div class="border_black"></div>

	<!--::::: LOGO AREA START  :::::::-->
	<div class="logo_area white_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 align-self-center">
					<div class="logo">
						<a href="{{route('home')}}">
							<img src="{{asset('assets/img/agri.jpg')}}" loading="lazy" alt="image">
						</a>
					</div>
				</div>
				<div class="col-lg-8 align-self-center">
					<div class="banner1">
						<a href="#">
							<img src="{{asset('assets/img/banderole3.jpg')}}" loading="lazy" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--::::: LOGO AREA END :::::::-->
	<!--::::: MENU AREA START  :::::::-->
	<div class="main-menu" id="header">	<a href="#top" class="up_btn up_btn1"><i class="far fa-chevron-double-up"></i></a>
		<div class="main-nav clearfix is-ts-sticky">
			<div class="container">
				<div class="row justify-content-between">
	
					<div class="col-12 col-lg-12">
						<div class="newsprk_nav light right mobile">
							<ul id="newsprk_menu">
								<li><a href="{{route('home')}}">Accueil</i></a></li>
								@if ($menu2)
									@if ($menu2->getCategorie_1)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_1->slug])}}">{{$menu2->getCategorie_1->nom}}</i></a></li>
									@endif
									
									@if ($menu2->getCategorie_2)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_2->slug])}}">{{$menu2->getCategorie_2->nom}}</i></a></li>
									@endif
									
									@if ($menu2->getCategorie_3)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_3->slug])}}">{{$menu2->getCategorie_3->nom}}</i></a></li>
									@endif
									
									@if ($menu2->getCategorie_4)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_4->slug])}}">{{$menu2->getCategorie_4->nom}}</i></a></li>
									@endif
									
									@if ($menu2->getCategorie_5)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_5->slug])}}">{{$menu2->getCategorie_5->nom}}</i></a></li>
									@endif
									
									@if ($menu2->getCategorie_6)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_6->slug])}}">{{$menu2->getCategorie_6->nom}}</i></a></li>
									@endif
									
									@if ($menu2->getCategorie_7)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_7->slug])}}">{{$menu2->getCategorie_7->nom}}</i></a></li>
									@endif
									
									@if ($menu2->getCategorie_8)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_8->slug])}}">{{$menu2->getCategorie_8->nom}}</i></a></li>
									@endif
									
									@if ($menu2->getCategorie_9)
									<li><a href="{{route('article_par_categorie',['slug'=>$menu2->getCategorie_9->slug])}}">{{$menu2->getCategorie_9->nom}}</i></a></li>
									@endif
									
									<li><a href="{{route('article_par_categorie',['slug'=>'tv'])}}">TV</i></a></li>
								@else
									@foreach ($cat_header as $cat)
										<li><a href="{{route('article_par_categorie',['slug'=>$cat->slug])}}">{{$cat->nom}}</i></a></li>
									@endforeach
								@endif
							</ul>
						</div>
				</div>
			</div>
		</div>
	</div>
	<!--::::: MENU AREA END :::::::-->

    @yield('content_body')
	<!--::::: ENTERTAINMENT AREA :::::::-->
	<div class="space-70"></div>
	<!--::::: ENTERTAINMENT AREA END :::::::-->
    <!--::::: FOOTER AREA START :::::::-->
	<div class="footer footer_area1 primay_bg">
		<div class="container">
			<div class="cta">
				<div class="row">
					<div class="col-md-6 align-self-center">
						
						<div class="social2">
							<ul class="inline">
								<li><a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->facebook}}@else#@endif"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->youtube}}@else#@endif"><i class="fab fa-youtube"></i></a>
								</li>
								<li><a target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->instagram}}@else#@endif"><i class="fab fa-instagram"></i></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 offset-lg-2 align-self-center">
						{{-- <div class="signup_form">
							<form action="index.html" method="post">
								<input class="signup" type="email" placeholder="Your email address">
								<input type="button" class="cbtn" value="sign up">
							</form>
							<p>We hate spam as much as you do</p>
						</div> --}}
					</div>
				</div>
			</div>
			<div class="border_white"></div>
			<div class="space-40"></div>
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-sm-6 col-lg">
							<div class="single_footer_nav border_white_right">
								<h3 class="widget-title2">Menu principal</h3>
								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><a href="{{route('home')}}">Accueil</a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'emission'])}}">Emission</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'decouverte'])}}">Découverte</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'nos-marches'])}}">Nos marchés</i></a></li>
											<li><a href="#">Galerie Photos</i></a></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><a href="{{route('article_par_categorie',['slug'=>'agenda'])}}">Agenda</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'sante'])}}">Santé</i></a></li>
											<li><a target="_blank" href="whatsapp://send?abid=+237656801098&text=Bonjour">Nous suivre sur Whatsapp</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg">
							<div class="single_footer_nav">
								<h3 class="widget-title2">Nos Catégories</h3>
								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><a href="{{route('home')}}">Accueil</a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'culture'])}}">Culture</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'peche'])}}">Pêche</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'elevage'])}}">Elevage</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=> 'environnement'])}}">Environnement</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'enquetes'])}}">Enquêtes</i></a></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><a href="{{route('article_par_categorie',['slug'=>'agritech'])}}">Agritech</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'transformation'])}}">Transformation</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'agri-check'])}}">Agri Check</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=> 'technique'])}}">Technique</i></a></li>
											<li><a href="{{route('article_par_categorie',['slug'=>'tv'])}}">TV</i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="space-40"></div>
					<div class="border_white"></div>
					<div class="space-40"></div>
					
				</div>
				<div class="col-lg-4">
					<div class="col-lg-6">
						<ul>
							<li><a href="#">Equipe de redaction</a>
							</li>
							<li><a href="#">Contributeurs</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 align-self-center">
						<p>&copy; Copyright 2021, All Rights Reserved powered by <a href="https://www.aite-consulting.com/"></a>Aiteconsulting</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--::::: FOOTER AREA END :::::::-->
       
    <!--::::: ALL JS FILES :::::::-->
	<script src="{{asset('assets/js/plugins/jquery.2.1.0.min.js')}}"></script>
	<script src="{{asset('assets/js/plugins/bootstrap.min.js')}}"></script>
	<script src="{{asset('assets/js/plugins/jquery.nav.js')}}"></script>
	<script src="{{asset('assets/js/plugins/jquery.waypoints.min.js')}}"></script>
	<script src="{{asset('assets/js/plugins/jquery-modal-video.min.js')}}"></script>
	<script src="{{asset('assets/js/plugins/owl.carousel.js')}}"></script>
	<script src="{{asset('assets/js/plugins/popper.min.js')}}"></script>
	<script src="{{asset('assets/js/plugins/circle-progress.js')}}"></script>
	<script src="{{asset('assets/js/plugins/slick.min.js')}}"></script>
	<script src="{{asset('assets/js/plugins/stellarnav.js')}}"></script>
	<script src="{{asset('assets/js/plugins/wow.min.js')}}"></script>
	<script src="{{asset('assets/js/main.js')}}"></script>
    @yield('js_files')
</body>
</html>