<%-- <%@page import="com.bean.JobseekerBean"%>
 --%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>


	<title>JobDestiny a Human Resource Management System | Login :: w3layouts</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Soft Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Work+Sans:200,300,400,500,600,700" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
</head>

<body>
<%
if(session.getAttribute("jb")==null)
{
	response.sendRedirect("login.jsp");
}else{
	//JobseekerBean jb = (JobseekerBean)session.getAttribute("jb"); 

%>


	<!-- header -->
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
						<a class="navbar-brand" href="index.html">
							<h1><span class="fa fa-signal" aria-hidden="true"></span> Job Destiny <label>Recruitment system</label></h1>
						</a>
					</div>
					<!--/.navbar-header-->

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
								<li><a href="index.jsp" class="effect-3">Home</a></li>
								<li class="dropdown">
									<a href="services.html" class="dropdown-toggle effect-3" data-toggle="dropdown">Registration <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="Registration.jsp">Company</a></li>
										<li class="divider"></li>
										<li><a href="comregister.jsp">Jobseeker</a></li>
										<li class="divider"></li>
											</ul>
								</li>
								<!-- <li class="dropdown">
									<a href="jobs.html" class="dropdown-toggle effect-3" data-toggle="dropdown">Login<b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-2">
										<div class="row">
											<div class="col-sm-6">
												<ul class="multi-column-dropdown">
													<li><a href="jobs.html">Walk-ins</a></li>
													<li><a href="jobs.html">Bpo Jobs</a></li>
													<li><a href="jobs.html">Teaching Jobs</a></li>
													<li><a href="jobs.html">Diploma Jobs</a></li>
													<li><a href="jobs.html">Tech Support</a></li>
													<li><a href="jobs.html">Finance Jobs</a></li>
													<li><a href="jobs.html">Part time Jobs</a></li>
													<li><a href="jobs.html">Health Care</a></li>
													<li><a href="jobs.html">Hospitality</a></li>
													<li><a href="jobs.html">Internships</a></li>
													<li><a href="jobs.html">Research Jobs</a></li>
													<li><a href="jobs.html">Defence Jobs</a></li>
												</ul>
											</div>
											<div class="col-sm-6">
												<ul class="multi-column-dropdown">
													<li><a href="login.html">Recruiter Updates</a></li>
													<li><a href="upload.html">Upload Resume</a></li>
													<li><a href="codes.html">Shortcodes</a></li>
												</ul>
											</div>
										</div>
									</ul>
								</li>
							 -->	<!-- <li><a href="login.jsp" class="effect-3">Login</a></li> -->
							 <li class="dropdown">
								<li><a href="login.jsp" class="dropdown-toggle effect-3" data-toggle="dropdown">Login <b class="caret"></b></a>
								<ul class="dropdown-menu">
								<li><a href="comlogin.jsp">Company</a></li>
										<li class="divider"></li>
										<li><a href="login.jsp">Jobseeker</a></li>
										<li class="divider"></li>
								</ul>
								<li><a href="contact.jsp" class="effect-3">Contact</a></li>
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div class="inner_page_agile">
		<h3>Get Your Job</h3>
		<p>For Jobseeker</p>

	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3layouts">
		<div class="inner_breadcrumb">

			<ul class="short_w3ls"_w3ls>
				<li><a href="index.jsp">Home</a><span>|</span></li>
				<!-- <li>Welcome,Jobseeker</li>
				 -->
				
 <%//=jb.getFname() %> <%//=jb.getLname() %>		</ul>
		</div>
	</div>
	<!--//w3_short-->

	 <div class="candidate_cv">
		<div class="tittle_head_w3ls">
			<h3 class="tittle two">Candidate Cv</h3>
		</div>
		<div class="inner_sec_grids_info login-form">
			<form action="ActionController" method="post" enctype="multipart/form-data">
			<input type="hidden" name="uid" value="<%//=jb.getId()%>">
			 	<div class="col-md-6 form-left">
				 	<!-- <div class="form-inputs email">
						<p>Full name</p>
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" name="Name" placeholder="" required="" />
					</div>
				  -->	<!-- <div class="form-inputs name">
						<p>Email</p>
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<input type="email" name="Email" placeholder="" required="" />
					</div> -->
					<!-- <div class="form-inputs name">
						<p>Phone</p>
						<i class="fa fa-phone" aria-hidden="true"></i>
						<input type="text" name="Phone" placeholder="" required="" />
					</div>
  -->
				</div>
				<div class="col-md-6 form-right">
					<!-- <div class="form-inputs name">
						<p>Comment</p>
						<i class="fa fa-comment" aria-hidden="true"></i>
						<textarea name="Message" placeholder="" required=""></textarea>
					</div> -->
				</div>
				<div class="clearfix"></div>
				<!-- <div class="form-inputs">
					<p>Specify your current employment status</p>
					<ul>
						<li>
							<input type="radio" id="a-option" name="selector1">
							<label for="a-option">Employed </label>
							<div class="check"></div>
						</li>
						<li>
							<input type="radio" id="b-option" name="selector1">
							<label for="b-option">Unemployed</label>
							<div class="check"></div>
						</li>
						<li>
							<input type="radio" id="c-option" name="selector1">
							<label for="c-option">Self-Employed</label>
							<div class="check"></div>
						</li>
						<li>
							<input type="radio" id="d-option" name="selector1">
							<label for="d-option">Student</label>
							<div class="check"></div>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div> -->
 			<div class="form-inputs upload">
					<p>Upload your resume</p>
					<input type="file" id="fileselect" name="fileselect" />
					<div id="filedrag">Upload</div>
				</div>
				<input type="submit" value="upload" name="action">
			</form>

		</div>
	</div>
	 
	<div class="footer_top_agileits">
		<div class="container">
			<div class="col-md-4 footer_grid">
				<h3>About Us</h3>
				<p>The JobDestiny - helping you to get your dream jobs and best employee for your organization.</p>
			</div>
			<div class="col-md-4 footer_grid">
				<h3>Latest News</h3>
				<ul class="footer_grid_list">
					<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						<a href="single.html">Lorem ipsum neque vulputate </a>
					</li>
					<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						<a href="single.html">Dolor amet sed quam vitae</a>
					</li>
					<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						<a href="single.html">Lorem ipsum neque, vulputate </a>
					</li>
					<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						<a href="single.html">Dolor amet sed quam vitae</a>
					</li>
					<li><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						<a href="single.html">Lorem ipsum neque, vulputate </a>
					</li>
				</ul>
			</div>
			<div class="col-md-4 footer_grid">
				<h3>Contact Info</h3>
				<ul class="address">
					<li><i class="fa fa-map-marker" aria-hidden="true"></i>8088 USA, Honey block, <span>Ahmedabad.</span></li>
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">JobDestiny@gmail.com</a></li>
					<li><i class="fa fa-phone" aria-hidden="true"></i>8401380858</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="footer_grids">
				<div class="col-md-4 footer_grid_left">
					<h3>Sign up for our Newsletter</h3>
				</div>
				<div class="col-md-8 footer_grid_right">

					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Enter Email Address..." required="">
						<input type="submit" value="Submit">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="footer_w3ls">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.jsp">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> Job Destiny <label>Recruitment system</label></h2>
						</a>
						<p>© 2017 Job Destiny. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
					</div>
				</div>
				<div class="col-md-3 footer_bottom_grid">
					<h6>Follow Us</h6>
					<div class="social">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-rss"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>

		</div>
	</div>
	<!-- //footer -->
	

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/userValidation.js"></script>
<%} %>
	</body>

</html>