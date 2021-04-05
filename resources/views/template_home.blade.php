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
	<div class="preloader">
		<div>
			<div class="nb-spinner"></div>
		</div>
	</div>
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
							<button type="submit" class="cbtn1">Search</button>
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
							<li><a href="#">Emission </i></a></li>
							<li><a href="#">Decouverte</i></a></li>
							<li><a href="#">Nos marchés</i></a></li>
							<li><a href="#">Gallerie Photo</i></a></li>
							<li><a href="#world">Agenda</a></li>
							<li><a href="#sports">Sante</a></li>
							<li><a href="contact.html">Nous suivent sur whatsapp</a></li>
                            <li class="search_btn"><i class="far fa-search"></i>
						</ul>
				
					</div>
					
				</div>
				<div class="col-4 col-lg-8=4 align-self-center">
					<div class="top_date_social text-right">
					
						<div class="social1">
							<ul class="inline">
								<li><a href="{{$reseaux_sociaux->twitter}}"><i class="fab fa-twitter"></i></a>
								</li>
								<li><a href="{{$reseaux_sociaux->facebook}}"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a href="{{$reseaux_sociaux->youtube}}"><i class="fab fa-youtube"></i></a>
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
							<img src="{{asset('assets/img/agri.jpg')}}" alt="image">
						</a>
					</div>
				</div>
				<div class="col-lg-8 align-self-center">
					<div class="banner1">
						<a href="#">
							<img src="{{asset('assets/img/banderole3.jpg')}}" alt="">
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
						<div class="newsprk_nav stellarnav">
							<ul id="newsprk_menu">
								<li><a href="">Acceuil </i></a></li>
								@foreach ($cat_header as $cat)
									<li><a href="{{route('article_par_categorie',['slug'=>$cat->slug])}}">{{$cat->nom}}</i></a></li>
								@endforeach
								<li><a href="contact.html">Boutique</a></li>
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
								<li><a href="#"><i class="fab fa-instagram"></i></a>
								</li>
								<li><a href="#"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a href="#"><i class="fab fa-youtube"></i></a>
								</li>
								<li><a href="#"><i class="fab fa-instagram"></i></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 offset-lg-2 align-self-center">
						<div class="signup_form">
							<form action="index.html" method="post">
								<input class="signup" type="email" placeholder="Your email address">
								<input type="button" class="cbtn" value="sign up">
							</form>
							<p>We hate spam as much as you do</p>
						</div>
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
											<li><a href="#">Acceuil</a>
											</li>
											<li><a href="#">Culture</a>
											</li>
											<li><a href="#">Peche</a>
											</li>
											<li><a href="#">Elevage</a>
											</li>
											<li><a href="#">Environement</a>
											</li>
											
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><a href="#">Enquette</a>
											</li>
											<li><a href="#">Agritech</a>
											</li>
											<li><a href="#">Tv</a>
											</li>
											<li><a href="#">Transformation</a>
											</li>
											<li><a href="#">Boutique</a>
											</li>
											<li><a href="#">Agritech</a>
											</li>
										
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg">
							<div class="single_footer_nav">
								<h3 class="widget-title2">Nos Categories</h3>
								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><a href="#">Acceuil</a>
											</li>
											<li><a href="#">Emission</a>
											</li>
											<li><a href="#">Decouverte</a>
											</li>
											<li><a href="#">Nos Marchés</a>
											</li>
											
											
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><a href="#">Gallerie photo</a>
											</li>
											<li><a href="#">Agenda</a>
											</li>
											<li><a href="#">Sante</a>
											</li>
											<li><a href="#">Nous suivre sur whatsapp</a>
											</li>

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