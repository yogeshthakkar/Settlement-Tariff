<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="Neon Admin Panel" />
	<meta name="author" content="" />

	<link rel="icon" href="assets/images/favicon.ico">

	<title>Neon | Portfolio Item</title>

	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/font-icons/entypo/css/entypo.css">
	<link rel="stylesheet" href="assets/css/neon.css">

	<script src="assets/js/jquery-1.11.3.min.js"></script>

	<!--[if lt IE 9]><script src="assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


</head>
<body>

<div class="wrap">
	
	<!-- Logo and Navigation -->
<div class="site-header-container container">

	<div class="row">
	
		<div class="col-md-12">
			
			<header class="site-header">
			
				<section class="site-logo">
				
					<a href="index.jsp">
						<img src="assets/images/logo@2x.png" width="120" />
					</a>
					
				</section>
				
				<nav class="site-nav">
					
					<ul class="main-menu hidden-xs" id="main-menu">
						<li>
							<a href="index.jsp">
								<span>Home</span>
							</a>
						</li>
						<li>
							<a href="about.jsp">
								<span>Pages</span>
							</a>
							
							<ul>
								<li>
									<a href="about.jsp">
										<span>About Us</span>
									</a>
								</li>
								<li class="active">
									<a href="#">
										<span>Active Menu Item</span>
									</a>
								</li>
								<li>
									<a href="gallery.jsp">
										<span>Gallery</span>
									</a>
									
									<ul>
										<li>
											<a href="index.jsp?2">
												<span>Sub 1</span>
											</a>
										</li>
										<li>
											<a href="about.jsp">
												<span>Sub 2</span>
											</a>
											
											<ul>
												<li>
													<a href="contact.jsp">
														<span>Sub of sub 1</span>
													</a>
												</li>
												<li>
													<a href="portfolio.jsp">
														<span>Sub of sub 2</span>
													</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="#">
												<span>Sub 3</span>
											</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="blog-post.jsp">
										<span>Blog Post</span>
									</a>
								</li>
								<li>
									<a href="portfolio-single.jsp">
										<span>Portfolio Item</span>
									</a>
								</li>
							</ul>
						</li>
						<li class="active">
							<a href="portfolio.jsp">
								<span>Portfolio</span>
							</a>
						</li>
						<li>
							<a href="blog.jsp">
								<span>Blog</span>
							</a>
						</li>
						<li>
							<a href="contact.jsp">
								<span>Contact</span>
							</a>
						</li>
						<li class="search">
							<a href="#">
								<i class="entypo-search"></i>
							</a>
							
							<form method="get" class="search-form" action="" enctype="application/x-www-form-urlencoded">
								<input type="text" class="form-control" name="q" placeholder="Type to search..." />
							</form>
						</li>
					</ul>
					
				
					<div class="visible-xs">
						
						<a href="#" class="menu-trigger">
							<i class="entypo-menu"></i>
						</a>
						
					</div>
				</nav>
				
			</header>
			
		</div>
		
	</div>
	
</div>	
	<!-- Breadcrumb -->
<section class="portfolio-item-details">
	
	<div class="container">
		
		<!-- Title and Item Details -->
		<div class="row item-title">
			
			<div class="col-sm-9">
				<h1>
					<a href="#">Athletica - Fitness Center</a>
				</h1>
				
				<div class="categories">
					<a href="#">Branding</a>
				</div>
			</div>
			
			<div class="col-sm-3">
				
				<div class="text-right">
					<div class="item-detail">
						<span>Date:</span>
						20 January 2014
					</div>
					
					<div class="item-detail">
						<a href="#" class="liked">
							Liked
							<i class="entypo-heart"></i>
						</a>
					</div>
				</div>
				
			</div>
			
		</div>
		
		<!-- Portfolio Images Gallery -->
		<div class="row">
			<div class="col-md-12">
				
				<div class="item-images">
				
					<a href="#">
						<img src="assets/images/portfolio-img-large-1.png" class="img-rounded" />
					</a>
					
					<a href="#">
						<img src="assets/images/portfolio-img-large-1.png" class="img-rounded" />
					</a>
					
					<a href="#">
						<img src="assets/images/portfolio-img-large-1.png" class="img-rounded" />
					</a>
					
					<a href="#">
						<img src="assets/images/portfolio-img-large-1.png" class="img-rounded" />
					</a>
					
					<a href="#">
						<img src="assets/images/portfolio-img-large-1.png" class="img-rounded" />
					</a>
					
					<div class="next-prev-nav">
						<a href="#" class="prev"></a>
						<a href="#" class="next"></a>
					</div>
					
					<div class="items-nav">
					</div>
				</div>
				
			</div>
		</div>
		
		<script type="text/javascript">
			jQuery(document).ready(function($)
			{
				$(".item-images").cycle({
					slides: '> a',
					prev: '.next-prev-nav .prev',
					next: '.next-prev-nav .next',
					pager: '.items-nav',
					pagerActiveClass: 'active',
					pagerTemplate: '<a href="#">{{slideNum}}</a>',
					swipe: true
				});
			});
		</script>
		
		<!-- Portfolio Description and Other Details -->
		<div class="row item-description">
			
			<div class="col-sm-8">
				
				<p class="text-justify">SiO Athletica is the sport and fitness centre run and by the Oslo Student Welfare Organization. In the Oslo and Akershus region it is a major competitor with its 15 000 members. SiO Athletica has 4 gyms located in Nydalen, Blinderen, Domus Athletica and the city centre. It was of paramount importance to revitalize the athletic offers to keep up with the competitors. Changing the name to SiO Athletica was the start in May 2013.</p>

				<p class="text-justify">SiO Athletica appears as a brand new fitness centre. The students are happy. A small survey taken after the opening of the refurbished centre in Nydalen, shows that all of the members were inspired to workout more because of the new design.</p>
				
			</div>
			
			<div class="col-sm-4">
				
				<dl>
					<dt>Client:</dt>
						<dd>Athletica</dd>
						
					<dt>Category:</dt>
						<dd>Branding</dd>
						
					<dt>Website:</dt>
						<dd>
							<a href="#" class="secondary">www.athletica.se</a>
						</dd>
				</dl>
				
			</div>
			
		</div>
		
	</div>
	
</section>

<section class="portfolio-container">
	
	<div class="container">
		
		<div class="row">
			<div class="col-md-12">
				<h3>Recent Work</h3>
			</div>
		</div>
		
		<div class="row">
			
			<div class="col-sm-4 col-xs-6">
				
				<div class="portfolio-item">
					<a href="portfolio-single.jsp" class="image">
						<img src="assets/images/portfolio-thumb-1.png" class="img-rounded" />
						<span class="hover-zoom"></span>
					</a>
					
					<h4>
						<a href="portfolio-single.jsp" class="like">
							<i class="entypo-heart"></i>
						</a>
						
						<a href="portfolio-single.jsp" class="name">Package Design</a>
					</h4>
					
					<div class="categories">
						<a href="portfolio-single.jsp">Branding</a>
					</div>
				</div>
				
			</div>
			
			<div class="col-sm-4 col-xs-6">
				
				<div class="portfolio-item">
					<a href="portfolio-single.jsp" class="image">
						<img src="assets/images/portfolio-thumb-1.png" class="img-rounded" />
						<span class="hover-zoom"></span>
					</a>
					
					<h4>
						<a href="portfolio-single.jsp" class="like">
							<i class="entypo-heart"></i>
						</a>
						
						<a href="portfolio-single.jsp" class="name">Google+</a>
					</h4>
					
					<div class="categories">
						<a href="portfolio-single.jsp">Printing</a>
					</div>
				</div>
				
			</div>
			
			<div class="col-sm-4 col-xs-6">
				
				<div class="portfolio-item">
					<a href="portfolio-single.jsp" class="image">
						<img src="assets/images/portfolio-thumb-1.png" class="img-rounded" />
						<span class="hover-zoom"></span>
					</a>
					
					<h4>
						<a href="portfolio-single.jsp" class="like">
							<i class="entypo-heart"></i>
						</a>
						
						<a href="portfolio-single.jsp" class="name">Origami</a>
					</h4>
					
					<div class="categories">
						<a href="portfolio-single.jsp">Package Design</a>
					</div>
				</div>
				
			</div>
			
		</div>
		
	</div>
	
</section>	
	<!-- Footer Widgets -->
<section class="footer-widgets">
	
	<div class="container">
		
		<div class="row">
			
			<div class="col-sm-6">
				
				<a href="#">
					<img src="assets/images/logo@2x.png" width="100" />
				</a>
				
				<p>
					Vivamus imperdiet felis consectetur onec eget orci adipiscing nunc. <br />
					Pellentesque fermentum, ante ac interdum ullamcorper.
				</p>
				
			</div>
			
			<div class="col-sm-3">
				
				<h5>Address</h5>
				
				<p>
					Loop, Inc. <br />
					795 Park Ave, Suite 120 <br />
					San Francisco, CA 94107
				</p>
				
			</div>
			
			<div class="col-sm-3">
				
				<h5>Contact</h5>
				
				<p>
					Phone: +1 (52) 2215-251 <br />
					Fax: +1 (22) 5138-219 <br />
					info@laborator.al
				</p>
				
			</div>
			
		</div>
		
	</div>
	
</section>

<!-- Site Footer -->
<footer class="site-footer">

	<div class="container">
	
		<div class="row">
			
			<div class="col-sm-6">
				Copyright &copy; Neon - All Rights Reserved. 
			</div>
			
			<div class="col-sm-6">
				
				<ul class="social-networks text-right">
					<li>
						<a href="#">
							<i class="entypo-instagram"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="entypo-twitter"></i>
						</a>
					</li>
					<li>
						<a href="#">
							<i class="entypo-facebook"></i>
						</a>
					</li>
				</ul>
				
			</div>
			
		</div>
		
	</div>
	
</footer>	
</div>


	<!-- Bottom scripts (common) -->
	<script src="assets/js/gsap/TweenMax.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/jquery.cycle2.min.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/neon-custom.js"></script>

</body>
</html>
</body>
</html>