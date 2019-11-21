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

	<title>Neon | Contact</title>

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
						<li>
							<a href="portfolio.jsp">
								<span>Portfolio</span>
							</a>
						</li>
						<li>
							<a href="blog.jsp">
								<span>Blog</span>
							</a>
						</li>
						<li class="active">
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
	<script type="text/javascript" src="//maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
function initialize()
{
	var mapDiv = document.getElementById('map');
	var map = new google.maps.Map(mapDiv, {
		center: new google.maps.LatLng(48.856614, 2.352222),
		zoom: 13,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		scrollwheel: false
	});
	
	new google.maps.Marker({
		position: new google.maps.LatLng(48.856614, 2.352222),
		map: map
	});
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<section class="contact-map" id="map"></section>


<section class="contact-container">
	
	<div class="container">
		
		<div class="row">
			
			<div class="col-sm-7 sep">
				
				<h4>Get in touch with us, write us an e-mail!</h4>
				
				<p>
					To shewing another demands to. Marianne property cheerful informed at striking at. <br />
					Clothes parlors however by cottage on.
				</p>
				
				<form class="contact-form" role="form" method="post" action="" enctype="application/x-www-form-urlencoded">
					
					<div class="form-group">
						<input type="text" name="name" class="form-control" placeholder="Name:" />
					</div>
					
					<div class="form-group">
						<input type="text" name="email" class="form-control" placeholder="E-mail:" />
					</div>
					
					<div class="form-group">
						<textarea class="form-control" name="message" placeholder="Message:" rows="6"></textarea>
					</div>
					
					<div class="form-group text-right">
						<button class="btn btn-primary" name="send">Send</button>
					</div>
					
				</form>
				
			</div>
			
			<div class="col-sm-offset-1 col-sm-4">
				
				<div class="info-entry">
					
					<h4>Address</h4>
					
					<p>
						Loop, Inc. <br />
						795 Park Ave, Suite 120 <br />
						San Francisco, CA 94107
						
						<br />
						<br />
						
						<strong>Working Hours:</strong>
						<br />
						08:00 - 17:00 <br />
						Monday to Friday 
						<br />
						<br />
					</p>
					
				</div>
				
				<div class="info-entry">
					
					<h4>Call Us</h4>
					
					<p>
						Phone: +1 (52) 2215-251<br />
						Fax: +1 (22) 5138-219<br />
						info@laborator.al
					</p>
					
					<ul class="social-networks">
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


	<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/neon-custom.js"></script>

</body>
</html>
</body>
</html>