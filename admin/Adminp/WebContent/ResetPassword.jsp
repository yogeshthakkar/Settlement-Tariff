<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="cssf2/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="cssf2/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="jsf2/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="jsf2/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="jsf2/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fontsf2.googleapis.com/cssf2?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fontsf2.googleapis.com/cssf2?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="cssf2/jquery.countdown.css" />
<!-- //timer -->
<!-- animation-effect -->
<link href="cssf2/animate.min.css" rel="stylesheet"> 
<script src="jsf2/wow.min.js"></script>
<script>
 new WOW().init();
</script>

	
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
					<li>Reset password</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->

<%if(request.getAttribute("Otpmatch")!=null) {%>
<!-- <form action="loginuser" method="post">
<input type="password" name="newpassword">
<input type="password" name="Cpassword">

<input type="submit" name="submit" value="Confirm">
</form> -->
	<%-- <%-- 						<form action="loginuser" method="post">
							<div class="styled-input" align="center">
												
							</div>
								<h2>Reset Password</h2>
								<br>
								<h4>Enter Your Email-id</h4>
							<div class="styled-input agile-styled-input-top">
							<br>
								<input type="password" placeholder="Enater new-password" name="newpassword" required><br>
								
								<input type="password" placeholder="Enater Confirm-password" name="Cpassword" required><br>
								
								<font color="red">${invalidemail}</font>
								<font color="red">${SendOtpError}</font>
								
							</div>
							
						
							<input type="submit" name="submit" value="Confirm">
						</form>

 --%> 
 <!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Reset Password</h3>
			
			<div class="login-form-grids">
				<h5 class="animated wow slideInUp" data-wow-delay=".5s">Enter Password</h5>
				<form class="animated wow slideInUp" data-wow-delay=".5s" method="post"  action="loginuser">
					<input type="password" placeholder="Password"  name="newpassword" required=" " >
					<input type="password" placeholder="Confirm password"  name="Cpassword" required=" " >
					
							
					<input type="submit" name="submit" value="Confirm" >
				</form>
			</div>
			<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
			</div>
		</div>
	</div>
<!-- //register -->

<%-- 								<label class="for-align" >Enter Your Email-id-:</label>
								<input type="email" placeholder="Enter Your Email-Id..." name="email" required>
								<font color="red">${invalidemail}</font>
								<font color="red">${SendOtpError}</font>
 --%>							<!-- 	<input type="password" placeholder="Enater new-password" name="newpassword" required><br>
								
								<input type="password" placeholder="Enater Confirm-password" name="Cpassword" required><br>
								
								</div>
								 --><%-- 
									<div class="styled-input agile-styled-input-top">
									<input type="email" placeholder="Enater email-id" name="email" required>
								<font color="red">${invalidemail}</font>
								<font color="red">${SendOtpError}</font>
								
							</div> --%>
							<br>
						<br>
							<input type="submit" name="submit" value="Confirm"  class="btn-size" onmouseover="style='background:black' " onmouseout="style='background:#0099FF' ">
						</form>
					
 					
 
<%}
else
{
	response.sendRedirect("SendOTP.jsp");
}
%>
<%@include file="footer.jsp" %>
</body>
</html>