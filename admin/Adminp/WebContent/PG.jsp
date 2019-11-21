<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PG page</title>
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
	<link href="cssf1/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
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
					<li>PG</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->

	<!-- top Products -->
	<div class="ads-grid">
		<div class="container">
			<!-- tittle heading -->
		
			<!-- //tittle heading -->
			<!-- product left -->
			
			<!-- //product left -->
			<!-- product right -->
			<div class="agileinfo-ads-display col-md-9" >
				<div class="wrapper">
					<!-- first section (nuts) -->
					<div class="product-sec1">
						<h3 class="heading-tittle">PG</h3>
						<%
						Connection con=null;
						try{
							Class.forName("com.mysql.jdbc.Driver");
							String url="jdbc:mysql://localhost:3306/test";
							con=DriverManager.getConnection(url,"root","root");	
						String query="SELECT * FROM pg";
						PreparedStatement p=con.prepareStatement(query);
						ResultSet rs=p.executeQuery();
						while(rs.next()){						
						%>
						<div class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
								<% String a=rs.getString("image1");%>
								<%String b=rs.getString("category"); 
								String d=rs.getString("sub_cat");%>			 
									 <img src="Files//<%=a%>" height="300" width="250"></img>
									 <div class="men-cart-pro">
									  <div class="inner-men-cart-pro" >
									  <br>
											<a href="Shivranjni.jsp?id=<%=rs.getInt("p_id")%>" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									</div>
										<span class="product-new-top">New</span>
										<div class="item-info-product ">
									<h4>
										<a href="#"><%=b%></a>
										<a href="#"><%=d%></a>
									</h4>
									
											<%String c=rs.getString("price"); %>
									
									<div class="info-product-price">
										<span class="item_price">
										<h4>
											<label>Price :</label>
											<a href="#"><%=c%></a>
									</h4>
									</span>
										
									</div>
									<%if(session.getAttribute("s")==null) 
									{%>
											alert("Please Log In");
									<% }
									else{
										Student stu=null;
										stu=(Student)session.getAttribute("s"); %>
									<form name="favourite" method="post" action="favouritecon">
									<input type="hidden" name="u_id" value=<%=stu.getU_id()%>>
										<input type="hidden" name="p_id" value=<%=rs.getInt("p_id")%>>
										<input type="hidden" name="property" value="PG">
										<button style="font-size:15px;background-color: orange;height: 56px;width: 166px; border-radius="25px" name="submit" value="add">Add to Favourite 
										<i class="fa fa-heart-o"></i></button>
											<input type="hidden" name="userid" >
											</form>
									
									<%}	%>
									
										</div>
							
					
								<<%-- div class="item-info-product ">
									<h4>
										<a href="#"><%=b%></a>
									</h4>
									<%String c=rs.getString("price"); %>
									<div class="info-product-price">
										<span class="item_price">
										<h4>
										<a href="#"><%=c%></a>
									</h4>
									</span>
										
									</div>
								</div>
						 --%>	</div>
						</div>
						<%}}catch(Exception e) 
						{e.printStackTrace();}
						%>
										<!-- //first section (nuts) -->
					<!-- second section (nuts special) -->

					<!-- //second section (nuts special) -->
				</div>
			</div>
			<!-- //product right -->
		</div>
	</div>
	<!-- //top products -->

<%@include file="footer.jsp" %>
</body>
</html>