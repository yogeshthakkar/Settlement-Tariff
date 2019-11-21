<%@page import="com.bean.addarea"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Addarea"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage area</title>
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
						<div class="col-md-12"><h3 class="page-title">Manage Area<a href="add-area.jsp"><button type="button" class="btn btn-default right"><i class="fa fa-plus-square"></i> Add Area</button></a></div></h3>
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<!-- TABLE STRIPED -->
							<div class="panel">
								<div class="panel-heading">
									<div class="row">
										<div class="col-md-12">
											<h3 class="panel-title">Area List</h3>	
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
										Addarea c=new Addarea();
										List<addarea> c1=c.getAllarea();
									%>							
		
								</div>
								<div class="panel-body">
									<div class="scroll">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Area_id</th>
												<th>City_id</th>
												<th>State_id</th>
												<th>Area_name</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
										<%int cnt=0;
										
										for(addarea s:c1)
										{
										%>
										
											<tr>
												<td><%=s.getA_id()%></td>
												<td><%=s.getC_id()%></td>
												<td><%=s.getS_id()%></td>
												<td><%=s.getA_name()%></td>
												<td> 
														<form name="edit" method="post" action="areacon">
														<input type="hidden" name="a_id" value="<%=s.getA_id()%>">
		 												<button class="btn btn-action-edit" name="submit" value="edit">
		 												<span class="fa fa-pencil"></span></button>
		 												</form>
		 										</td>
		 									    <td>
														<form name="delete" method="post" action="areacon">
														<input type="hidden" name="a_id" value="<%=s.getA_id()%>">
		 												<button class="btn btn-action-delete" name="submit" value="delete">
		 												<span class="fa fa-trash"></span></button>
		 												</form>
		 											</td>
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