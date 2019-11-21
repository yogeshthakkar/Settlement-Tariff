<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
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
<%Student add=(Student)request.getAttribute("s"); 

%>

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
					<li>User Profile</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	
						<%
						if(session.getAttribute("s")!=null)
						{
						Student stu=new Student();
						stu=(Student)session.getAttribute("s");
						Connection conn=null;
						try{
							int i=Integer.parseInt(request.getParameter("id")); 
				
							Class.forName("com.mysql.jdbc.Driver");
						String url="jdbc:mysql://localhost:3306/test";
						conn=DriverManager.getConnection(url,"root","root");	
						String query="SELECT * FROM user Where u_id=?";
						PreparedStatement p=conn.prepareStatement(query);
						p.setInt(1,i);
						ResultSet rs=p.executeQuery();
						while(rs.next()){						
						%>
			<!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">User Profile</h3>
			<div class="login-form-grids">
				<h5 class="animated wow slideInUp" data-wow-delay=".5s">profile information</h5>
				<form class="animated wow slideInUp" data-wow-delay=".5s" method="post" action="loginuser">
					<input type="text" placeholder="First Name..."  name="fname" value="<%=rs.getString("firstname")%>" =required=" " >
					<input type="text" placeholder="Last Name..."  name="lname" value="<%=rs.getString("lastname")%>" required=" " >
					<input type="email" placeholder="Email Address"  name="email" value="<%=rs.getString("Email")%>" required=" " >
					<input type="text"  name="gender" value="<%=rs.getString("Gender")%>" required=" " >
					<input type="text"  name="phone" value="<%=rs.getString("phone")%>" required=" " >
					<input type="text" name="usertype" value="<%=rs.getString("u_type")%>" required=" " >
					<input type="hidden" name="u_id" value=<%=stu.getU_id() %>>
					<input type="submit" value="Update" name="submit">
				</form>
			</div>
			<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
				<a href="index1.jsp">Home</a>
			</div>
		</div>
	</div>
<!-- //register -->
					
						<!-- 	<input type="submit" name="submit" value="Sign Up">
						 --></form></table>
							<%}}catch(Exception e) 
						{e.printStackTrace();}}
						%>
	<br><br><br><br><br><br>
	<!-- checkout -->
<center><b>	<h2>Property Deatails</h2></b></center>
	<div class="checkout" align="letf">
		<div class="container">
			<div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>SL No.</th>	
							<th>image1</th>
							<th>image2</th>
							<th>image3</th>
							<th>category</th>
							<th>sub category</th>
							<th>Address</th>
							<th>Area</th>
							<th>City</th>
							<th>State</th>
							<th>Rent</th>
							<th>name</th>
							<th>Phone</th>
							<th>email</th>
							<th>status</th>
							<th>Action</th>
						</tr>
					</thead>
						<%
						Connection con=null;
						try{
							int i=Integer.parseInt(request.getParameter("id")); 
				
							Class.forName("com.mysql.jdbc.Driver");
						String url="jdbc:mysql://localhost:3306/test";
						con=DriverManager.getConnection(url,"root","root");	
						String query="SELECT p.status,p.p_id,p.stateid,p.cityid,p.areaid,p.userid,p.rent,p.addreaa,p.category,p.sub_cat,p.price,p.facility,p.image1,p.image2,p.image3,p.phone,p.email,p.name,u.u_id,c.c_id,c.c_name,a.a_id,a.a_name,s.s_id,s.s_name FROM `postproperty` AS p,`user` AS u,`area` AS a,`city` AS c,`state` AS s "
						+"WHERE s.s_id=p.stateid AND a.a_id=p.areaid AND c.c_id=p.cityid AND u.u_id=p.userid And u.u_id=?;";
						PreparedStatement p=con.prepareStatement(query);
						p.setInt(1,i);
						ResultSet rs=p.executeQuery();
						while(rs.next()){						
						%>
	
					<tr class="rem1">
						<td class="invert"><%=rs.getInt("p_id") %></td>
						<td class="invert-image"><a href="single.jsp"><img src="Files//<%=rs.getString("image1")%>" alt=" " class="img-responsive" /></a></td>
						<td class="invert-image"><a href="single.jsp"><img src="Files//<%=rs.getString("image2")%>" alt=" " class="img-responsive" /></a></td>
						<td class="invert-image"><a href="single.jsp"><img src="Files//<%=rs.getString("image3")%>" alt=" " class="img-responsive" /></a></td>				
						<td class="invert">
							 <div class=""> 
								<div class="">                           
									<div class="">&nbsp;</div>
									<div class=""><span><%=rs.getString("category") %></span></div>
									<div class="">&nbsp;</div>
								</div>
							</div>
						</td>
						<td class="invert">
							 <div class=""> 
								<div class="">                           
									<div class="">&nbsp;</div>
									<div class=""><span><%=rs.getString("sub_cat") %></span></div>
									<div class="">&nbsp;</div>
								</div>
							</div>
						</td>
						
						<td class="invert"><%=rs.getString("addreaa") %></td>
						<td class="invert"><%=rs.getString("a_name") %></td>
						<td class="invert"><%=rs.getString("c_name") %></td>
						<td class="invert"><%=rs.getString("s_name") %></td>
						<td class="invert"><%=rs.getString("rent") %></td>
						<td class="invert"><%=rs.getString("name") %></td>
						<td class="invert"><%=rs.getString("phone") %></td>
						<td class="invert"><%=rs.getString("email") %></td>
						<td class="invert"><%=rs.getString("status") %></td>
						
						<td class="invert">
						<div class="rem">
							 	<form action="propertycon" method="post">
									<input type="hidden" name="p_id" value=<%=rs.getInt("p_id")%>>
										<button class="btn btn-action-delete" name="submit" value="delete">
										 	<div class="close1">
		 												</button>
										<!-- <input type="button" name="submit" value="delete">
										 --></form>
									 	</div> 
						
							<script>$(document).ready(function(c) {
								$('.close1').on('click', function(c){
									$('.rem1').fadeOut('slow', function(c){
										$('.rem1').remove();
									});
									});	  
								});
						   </script>
						</td>
					</tr>
											<%}}catch(Exception e) 
						{e.printStackTrace();}
						%>
	
							</table>
			</div>
			
<!-- //checkout -->
	<br><br><br><br><br><br>
	
<%@include file="footer.jsp" %>
</body>
</html>