<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Mark</title>
	<script>
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
	<!--pop-up-box-->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
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
						<%
						if(session.getAttribute("s")==null)
							{%>
								<javascript> alert("login");</javascript>
							<%}
							else{
								Student stu=null;
								stu=(Student)session.getAttribute("s");
					
								
								%>
					</li>
					<li>Favourite</li>
					
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- checkout page -->
	<div class="privacy">
		<div class="container">
			<!-- tittle heading -->
			<h3 class="tittle-w3l">Favourite
				<%int as=stu.getU_id(); 	%>
				<span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
			</h3>
			<!-- //tittle heading -->
			<div class="checkout-right">
				<h4>Your Favourits contains:
					<!-- <span>3 Products</span> -->
				</h4>
				<div class="table-responsive">
					<table class="timetable_sub">
						<thead>
							<tr>
								<th>SL No.</th>
								<th>House/PG</th>
								<th>Category</th>
								<th>City</th>

								<th>Price</th>
								<th>Remove</th>
							</tr>
						</thead>
						<%
						int i=1;
						Connection con=null;
						try{
							
							Class.forName("com.mysql.jdbc.Driver");
							String url="jdbc:mysql://localhost:3306/test";
							con=DriverManager.getConnection(url,"root","root");
						String query="SELECT p.p_id,p.image1,p.areaid,p.price,p.category,f.f_id,u.u_id,a.a_name FROM `area` AS a,`postproperty` AS p,`favourite` AS f,`user` AS u"
												+" WHERE f.u_id=? AND f.p_id=p.p_id AND p.areaid=a.a_id AND f.u_id=u.u_id AND f.type='House';";
						PreparedStatement p=con.prepareStatement(query);
						p.setInt(1, as);
						ResultSet rs=p.executeQuery();
						
						while(rs.next()){						
						%>
						
			
						<tbody>
							<tr class="rem1">
								<td class="invert"><%=i++ %></td>
								<td class="invert-image">
									<a href="single2.jsp">
									<%String s=rs.getString("image1") ;
									String s2=rs.getString("category");%>
										<img src="Files//<%=s%>" alt=" " class="img-responsive">
									</a>
								</td>
								<td class="invert">
									 <div class="">
										<div class="">
											<div class="">&nbsp;</div>
											<div class="">
												<span><%=s2%></span>
											</div>
											<div class="">&nbsp;</div>
										</div>
									</div>
							 	</td>
								<td class="invert"><%=rs.getString("a_name") %></td>
								<td class="invert"><%=rs.getInt("price") %></td>
								<td class="invert">
									<div class="rem">
									 
									 	<form action="favouritecon" method="post">
									<input type="hidden" name="f_id" value=<%=rs.getInt("f_id")%>>
										<button class="btn btn-action-delete" name="submit" value="delete">
										 	<div class="close1">
		 												</button>
		 												
										<!-- <input type="button" name="submit" value="delete">
										 --></form>
									
									 	</div> 
									</div>
								</td>
							</tr>
							<%}}
						catch(Exception e)
							{
								e.printStackTrace();
							}%>
							<%		
						Connection conn=null;
						try{
						int a=i;
							Class.forName("com.mysql.jdbc.Driver");
							String url="jdbc:mysql://localhost:3306/test";
							conn=DriverManager.getConnection(url,"root","root");
						String query="SELECT p.p_id,p.image1,p.areaid,p.price,p.category,f.f_id,u.u_id,a.a_name FROM `area` AS a,`pg` AS p,`favourite` AS f,`user` AS u"
												+" WHERE f.u_id=? AND f.p_id=p.p_id AND p.areaid=a.a_id AND f.u_id=u.u_id AND f.type='PG';";
						PreparedStatement p=conn.prepareStatement(query);
						p.setInt(1, as);
						ResultSet rs=p.executeQuery();
						
						while(rs.next()){						
						%>
						<tbody>
							<tr class="rem1">
								<td class="invert"><%=a++%></td>
								<td class="invert-image">
									<a href="single2.jsp">
									<%String s=rs.getString("image1") ;
									String s2=rs.getString("category");%>
										<img src="Files//<%=s%>" alt=" " class="img-responsive">
									</a>
								</td>
								<td class="invert">
									 <div class="">
										<div class="">
											<div class="">&nbsp;</div>
											<div class="">
												<span><%=s2%></span>
											</div>
											<div class="">&nbsp;</div>
										</div>
									</div>
							 	</td>
								<td class="invert"><%=rs.getString("a_name") %></td>
								<td class="invert"><%=rs.getInt("price") %></td>
								<td class="invert">
									<div class="rem">
								 
									 	<form action="favouritecon" method="post">
									<input type="hidden" name="f_id" value=<%=rs.getInt("f_id")%>>
										<button class="btn btn-action-delete" name="submit" value="delete">
										 	<div class="close1">
		 												</button>
		 												
										<!-- <input type="button" name="submit" value="delete">
										 --></form>
									
									 	</div> 
									</div>
								</td>
							</tr>
							<%}}
						catch(Exception e)
							{
								e.printStackTrace();
							}%>
			
							
							<% }%>
							
					</tbody>
					</table>
				</div>
			</div>
			</div>
	<br><br><br><br><br><br><br><br>
	</div>	<!-- //checkout page -->
<%@include file="footer.jsp" %>


</body>
</html>