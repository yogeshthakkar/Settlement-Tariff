<%@page import="com.bean.Addpackage"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.pacakgedao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Package</title>
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

<%-- <%Addpackage c=(Addpackage)request.getAttribute("pacakage"); 


%>
 --%>

	<!-- WRAPPER -->
	<div id="wrapper">
<%@include file="Navbar.jsp" %>
	
		<%@include file="leftsider.jsp" %>
				<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12"><h3 class="page-title">Manage Package<a href="add-package.jsp"><button type="button" class="btn btn-default right"><i class="fa fa-plus-square"></i> Add Package</button></a></div></h3>
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<!-- TABLE STRIPED -->
							<div class="panel">
								<div class="panel-heading">
									<div class="row">
										<div class="col-md-12">
											<h3 class="panel-title">Package List</h3>	
										</div>
									</div>
								</div>
								<div class="panel-heading">
									<form>
										<div class="row">
												<div class="col-sm-3">
													<select class="form-control">
														<option>-- Sort By --</option>
													</select>
												</div>
												<div class="col-sm-6"></div>
												<div class="col-sm-3">
													<div class="input-group">
														<input type="text" value="" class="form-control" placeholder="Search table...">
														<span class="input-group-btn"><button type="button" class="btn btn-search"><span><i class="fa fa-search"></i></span></button></span>
													</div>
												</div>
										</div>
									</form>
									<%
									pacakgedao adao=new pacakgedao();
										List<Addpackage> c1=adao.getAllStudent();
									%>							
									
								</div>
								<div class="panel-body">
									<div class="scroll">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>p_id</th>
												<th>Name</th>
												<th>Desc.</th>
												<th>Price</th>
												<th>Discount Price</th>
												<th>Status</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
										<%int cnt=0;
										for(Addpackage c:c1)
										{
										%>
											<tr>
												<td><%=c.getP_id()%></td>
												<td><%=c.getP_name()%></td>
												<td><%=c.getP_desc()%></td>
												<td><%=c.getPrice() %></td>
												<td><%=c.getDiscount_pri()%></td>
												<td><%=c.getImage() %></td>
												<td> 
														<form name="edit" method="post" action="addpackage">
														<input type="hidden" name="p_id" value="<%=c.getP_id()%>">
		 												<button class="btn btn-action-edit" name="submit" value="edit">
		 												<span class="fa fa-pencil"></span></button>
		 												</form>
		 										</td>
		 										<td>
		 											<form name="delete" method="post" action="addpackage">
														<input type="hidden" name="p_id" value="<%=c.getP_id()%>">
		 												<button class="btn btn-action-delete" name="submit" value="delete">
		 												<span class="fa fa-trash"></span></button>
		 												</form>
		 										</td>
													<!-- <a href="edit-package.jsp"><button class="btn btn-action-edit" name="submit" value="edit"><span class="fa fa-pencil"></span></button></a>&nbsp;-->
											<!-- 	<td>	<a href=""><button class="btn btn-action-delete" name="submit" value="delete"><span class="fa fa-trash"></span></button></a></td> 
											 -->	</td>
											</tr>
											<%} %>
										</tbody>
									</table>
									</div>
								</div>
							</div>
							<!-- END TABLE STRIPED -->
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
	<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">&copy; 2017 <a href="index.jsp" target="_blank">Settlement Tariff</a>. All Rights Reserved.</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	
	<script src="scripts/klorofil-common.js"></script>
	

</body>
</html>