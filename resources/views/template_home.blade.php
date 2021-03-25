<!DOCTYPE html>
<html lang="fr">

<head>
    <!-- META -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!--::::: FABICON ICON :::::::-->
	<link rel="icon" href="assets/img/icon/fabicon.png">
	<!--::::: ALL CSS FILES :::::::-->
	<link rel="stylesheet" href="assets/css/plugins/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/plugins/animate.min.css">
	<link rel="stylesheet" href="assets/css/plugins/fontawesome.css">
	<link rel="stylesheet" href="assets/css/plugins/modal-video.min.css">
	<link rel="stylesheet" href="assets/css/plugins/owl.carousel.css">
	<link rel="stylesheet" href="assets/css/plugins/slick.css">
	<link rel="stylesheet" href="assets/css/plugins/stellarnav.css">
	<link rel="stylesheet" href="assets/css/theme.css">
    @yield('head_file')
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
						<form action="#">
							<input type="search" placeholder="Search Here...">
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
							<li><a href="#">Emission </i></a>
								
							</li>
							<li><a href="#">Decouverte</i></a>
								
							</li>
							<li><a href="#">Nos marchés</i></a>
								
							</li>
							<li><a href="#">Gallerie Photo</i></a>


							</li>
							<li><a href="#world">Agenda</a></li>
							<li><a href="#sports">Sante</a></li>
							<li><a href="contact.html">Nous suivrrent sur whatsapp</a></li>
                            <li class="search_btn"><i class="far fa-search"></i>
							
							
							
						</ul>
				
					</div>
					
				</div>
				<div class="col-4 col-lg-8=4 align-self-center">
					<div class="top_date_social text-right">
					
						<div class="social1">
							<ul class="inline">
								<li><a href="#"><i class="fab fa-twitter"></i></a>
								</li>
								<li><a href="#"><i class="fab fa-facebook-f"></i></a>
								</li>
								<li><a href="#"><i class="fab fa-youtube"></i></a>
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
						<a href="index.html">
							<img src="assets/img/logo/logo.png" alt="image">
						</a>
					</div>
				</div>
				<div class="col-lg-8 align-self-center">
					<div class="banner1">
						<a href="#">
							<img src="assets/img/banderole3.jpg" alt="">
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
								<li><a href="#">Acceuil </i></a>
									
								</li>
								<li><a href="#">Culture</i></a>
									
								</li>
								<li><a href="#">Peche</i></a>
									
								</li>
								<li><a href="#">Elevage</i></a>


								</li>
								<li><a href="#world">Environnement</a></li>
								<li><a href="#sports">Enquette</a></li>
								<li><a href="contact.html">Agritech</a></li>

								<li><a href="#world">Tv</a></li>
								<li><a href="#sports">Transformation</a></li>
								<li><a href="contact.html">Boutique</a></li>

								<li><a href="#sports">Agri check</a></li>
								
							</ul>
							
						</div>
						
				</div>
			</div>
		</div>
	</div>
	<!--::::: MENU AREA END :::::::-->

    @yield('content_body')

    <!--::::: FOOTER AREA START :::::::-->
	<div class="footer footer_area1 primay_bg">
		<div class="container">
			<div class="cta">
				<div class="row">
					<div class="col-md-6 align-self-center">
						<div class="footer_logo logo">
							<a href="index.html">
								<img src="assets/img/logo/footer_logo.png" alt="logo">
							</a>
						</div>
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
								<h3 class="widget-title2">News categories</h3>
								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><a href="#">Politics</a>
											</li>
											<li><a href="#">Business</a>
											</li>
											<li><a href="#">TECHNOLOGY</a>
											</li>
											<li><a href="#">Science</a>
											</li>
											<li><a href="#">Health</a>
											</li>
											<li><a href="#">Sports</a>
											</li>
											<li><a href="#">Entertainment</a>
											</li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><a href="#">Education</a>
											</li>
											<li><a href="#">Obituaries</a>
											</li>
											<li><a href="#">Corrections</a>
											</li>
											<li><a href="#">Education</a>
											</li>
											<li><a href="#">Today’s Paper</a>
											</li>
											<li><a href="#">Corrections</a>
											</li>
											<li><a href="#">Foods</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-lg">
							<div class="single_footer_nav">
								<h3 class="widget-title2">Living</h3>
								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><a href="#">Crossword</a>
											</li>
											<li><a href="#">Food</a>
											</li>
											<li><a href="#">Automobiles</a>
											</li>
											<li><a href="#">Education</a>
											</li>
											<li><a href="#">Health</a>
											</li>
											<li><a href="#">Magazine</a>
											</li>
											<li><a href="#">Weddings</a>
											</li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><a href="#">Classifieds</a>
											</li>
											<li><a href="#">Photographies</a>
											</li>
											<li><a href="#">NYT Store</a>
											</li>
											<li><a href="#">Journalisms</a>
											</li>
											<li><a href="#">Public Editor</a>
											</li>
											<li><a href="#">Tools & Services</a>
											</li>
											<li><a href="#">My Account</a>
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
					<div class="extra_newss border_white_left pl-4">
						<h3 class="widget-title2">More news</h3>
						<div class="single_extra_news border_white_bottom">
							<p>TECHNOLOGY <span> / March 26, 2020</span>
							</p>	<a href="#">Nancy zhang a chinese busy woman and dhaka</a>
							<span class="news_counter">1</span>
						</div>
						<div class="single_extra_news border_white_bottom">
							<p>TECHNOLOGY <span> / March 26, 2020</span>
							</p>	<a href="#">Nancy zhang a chinese busy woman and dhaka</a>
							<span class="news_counter">2</span>
						</div>
					
						<div class="space-40"></div>
						<div class="border_white_bottom"></div>
						<div class="space-40"></div>
						
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 align-self-center">
						<p>&copy; Copyright 2020, All Rights Reserved</p>
					</div>
					<div class="col-lg-6 align-self-center">
						<div class="copyright_menus text-right">
							<div class="language"></div>
							<div class="copyright_menu inline">
								<ul>
									<li><a href="#">About</a>
									</li>
									<li><a href="#">Advertise</a>
									</li>
									<li><a href="#">Privacy & Policy</a>
									</li>
									<li><a href="#">Contact Us</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--::::: FOOTER AREA END :::::::-->
       
    <!--::::: ALL JS FILES :::::::-->
	<script src="assets/js/plugins/jquery.2.1.0.min.js"></script>
	<script src="assets/js/plugins/bootstrap.min.js"></script>
	<script src="assets/js/plugins/jquery.nav.js"></script>
	<script src="assets/js/plugins/jquery.waypoints.min.js"></script>
	<script src="assets/js/plugins/jquery-modal-video.min.js"></script>
	<script src="assets/js/plugins/owl.carousel.js"></script>
	<script src="assets/js/plugins/popper.min.js"></script>
	<script src="assets/js/plugins/circle-progress.js"></script>
	<script src="assets/js/plugins/slick.min.js"></script>
	<script src="assets/js/plugins/stellarnav.js"></script>
	<script src="assets/js/plugins/wow.min.js"></script>
	<script src="assets/js/main.js"></script>
    @yield('js_files')
</body>
</html>