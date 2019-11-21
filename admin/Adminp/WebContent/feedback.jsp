<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<style type="text/css">
	.for-padding{
	
	padding: 50px;
	border-color: blue;
	font-size: 14;
		
	}
	</style>
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
					<li>Feedback</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Feedback</h3>
		<%if(session.getAttribute("s")!=null){
			Student stu=null;
			stu=(Student)session.getAttribute("s");
			
			%>
			<div class="login-form-grids">
				<h5 class="animated wow slideInUp" data-wow-delay=".5s">Give your Feedback</h5>
				<form class="animated wow slideInUp" data-wow-delay=".5s"  action="feedbackcon" method="post">
					<input type="email" placeholder="Email Address"  name="email" required=" " >
					<br>
					<textarea cols="50" rows="3" placeholder="	 Enter Feedback" name="feedback"></textarea>
						<div class="register-check-box animated wow slideInUp" data-wow-delay=".5s">
						<input type="hidden" name="u_id" value=<%=stu.getU_id() %>>
					<input type="submit" name="add" value="Submit">
				</form>
			</div>
			<%} %>
				<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
				<a href="index1.jsp">Home</a>
			</div>
		</div>
	</div>
	<br><br>
<!-- //register -->
	
	
<%@include file="footer.jsp" %>

</body>
</html>