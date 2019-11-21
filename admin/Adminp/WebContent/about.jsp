<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us</title>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="cssf1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="cssf1/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="cssf1/font-awesome.css" rel="stylesheet">
	<!--pop-up-box-->
	<link href="css2/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="cssf1/jquery-ui1.css">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

</head>
<body>
<%@include file="header.jsp" %>
<!-- banner-2 -->
	<div class="page-head_agile_info_w3l">

	</div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="index1.jsp">Home</a>
						<i>|</i>
					</li>
					<li>About Us</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->

<div class="about_page">
	<div class="container">
	 <b><h2 class="agile" align="center">About Us</h2></b>
	 <br>
		<div id="parentVerticalTab">
            <div class="resp-tabs-container hor_1">
                <div>
					
					<div class="col-md-6 easy-left">
						<img src="images/t2.jpg" alt=" " width="400px">
					</div>
					<div class="col-md-6 easy-right">
						<ul>
							<li><a href="#"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Consectetuer adipiscing elit</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Lorem ipsum dolor sit amet</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Dolore magna aliquam </a></li>
							<li><a href="#"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Consectetuer adipiscing elit</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Lorem ipsum dolor sit amet</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Dolore magna aliquam </a></li>
						</ul>
					</div>
					<div class="clearfix"></div><br>
						<b><p>Nam aliquam pretium feugiat. Duis sem est, viverra eu interdum ac, 
						suscipit nec mauris. Suspendisse commodo tempor sagittis! In justo est, 
						sollicitudin eu scelerisque pretium, placerat eget elit. Praesent faucibus
						rutrum odio at rhoncus. Pel ermentum pretium. Maecenas ac lacus ut neque 
						rhoncus laoreet sed id tellus. Donec justo tellus.</p>
                </b>
                </div>     
            </div>
        </div>
	</div>
</div><br>
<div class="team-page">
	<div class="container">
		<h2 class="agile" align="center">Team</h2><br>
		<div class="col-md-4 about-poleft">
            <div class="about_img"><img src="images/dheer.jpg" alt="" height="300px" width="250px">
              <h3 align="center">Kothari Dheer</h3>
              <div class="about_opa">
				<b><p align="center">Developer & Designer</p>
                  <div class="agile-social" align="center">
							<ul>
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-rss"></i></a>
							</ul>
						</div>
              </div>
            </div>
        </div>
		<div class="col-md-4 about-poleft">
            <div class="about_img"><img src="images/maulik.jpg" alt=""  height="300px" width="250px">
              <h3 align="center">Shah Maulik</h3>
              <div class="about_opa">
                <b><p align="center">Developer & Designer</p>
                 <div class="agile-social" align="center">
							<ul>
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-rss"></i></a>
							</ul>
						</div>
              </div>
            </div>
        </div>
		<div class="col-md-4 about-poleft">
            <div class="about_img"><img src="images/y1.jpg" alt=""  height="300px" width="250px" />
              <h3 align="center">Thakkar Yogesh</h3>
              <div class="about_opa">
              <b><p align="center">Developer & Designer</p>
                <div class="agile-social" align="center">
							<ul>
								<a href="https://www.facebook.com/yogesh.thakkar.7505"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-rss"></i></a>
							</ul>
						</div>
              </div>
            </div>
        </div>
		<div class="clearfix"></div>
	</div>
</div>

<br>
<!-- //agile -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->


<%@include file="footer.jsp" %>
</body>
</html>