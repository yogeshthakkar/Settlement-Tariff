<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- VENDOR CSS -->
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="vendor/linearicons/style.css">
	
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="css/demo.css">
	<!-- GOOGLE FONTS -->
	<link rel="stylesheet" type="text/css" href="vendor/google-fonts/css/source-sans-pro.css">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="img/favicon.png">


</head>
<body>
<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.jsp"><span class="logo">Settlement Tariff</span></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				
				 	<div id="navbar-menu">
						<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
<%--  					<%if(session.getAttribute("s")==null) {%>
					<h3></h3><a href="login.jsp">Log in</a>
					<%}
					else
					{%>--%>
					<a href="logout.jsp">Log Out</a>
					
					<%//} %>
 	
 	<!-- 						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/user.png" class="img-circle" alt="Avatar"> <span>Pragnesh Nagar</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a> -->
							<!-- <ul class="dropdown-menu">
								<li><a href="profile.jsp"><i class="lnr lnr-user"></i> <span><font>My Profile</font></span></a></li>
								<li><a href="#"><i class="lnr lnr-exit"></i> <span><font>Logout</font></span></a></li>
							</ul>
					 -->	</li>
			 			<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		
</body>
</html>