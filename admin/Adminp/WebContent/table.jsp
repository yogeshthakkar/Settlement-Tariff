<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Table</title>
<!-- VENDOR CSS -->
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="vendor/linearicons/style.css">

	<link rel="stylesheet" type="text/css" href="vendor/DataTables/datatables.min.css"/>
	
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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="img/user.png" class="img-circle" alt="Avatar"> <span>Pragnesh Nagar</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="profile.jsp"><i class="lnr lnr-user"></i> <span><font>My Profile</font></span></a></li>
								<li><a href="#"><i class="lnr lnr-exit"></i> <span><font>Logout</font></span></a></li>
							</ul>
						</li>
						<!-- <li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="index.jsp"><i class="lnr lnr-power-switch"></i> <span>Dashboard</span></a></li>
						<li>
							<a href="#category" data-toggle="collapse" class="collapsed"><i class="fa fa-tag"></i> <span>Category Management</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="category" class="collapse ">
								<ul class="nav">
									<li><a href="add-category.jsp" class="">Add Category</a></li>
									<li><a href="manage-category.jsp" class="">Manage Category</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#subCategory" data-toggle="collapse" class="collapsed"><i class="fa fa-tags"></i> <span>Sub-Category <font>Management</font></span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subCategory" class="collapse ">
								<ul class="nav">
									<li><a href="add-sub-category.jsp" class="">Add Sub-Category</a></li>
									<li><a href="manage-sub-category.jsp" class="">Manage Sub-Category</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#package" data-toggle="collapse" class="collapsed"><i class="lnr lnr-briefcase"></i> <span>Package Management</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="package" class="collapse ">
								<ul class="nav">
									<li><a href="add-package.jsp" class="">Add Package</a></li>
									<li><a href="manage-package.jsp" class="">Manage Package</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#product" data-toggle="collapse" class="collapsed"><i class="fa fa-shopping-bag"></i> <span>Product Management</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="product" class="collapse ">
								<ul class="nav">
									<li><a href="add-product.jsp" class="">Add Product</a></li>
									<li><a href="manage-product.jsp" class="">Manage Product</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#user" data-toggle="collapse" class="collapsed"><i class="lnr lnr-users"></i> <span>User Management</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="user" class="collapse ">
								<ul class="nav">
									<li><a href="add-user.jsp" class="">Add User</a></li>
									<li><a href="manage-user.jsp" class="">Manage User</a></li>
									<li><a href="#security" data-toggle="collapse" class="collapsed"><i class="lnr lnr-lock"></i>Security Question<i class="icon-submenu lnr lnr-chevron-left"></i></a>
										<div id="security" class="collapse">
											<ul class="nav">
												<li><a href="add-question.jsp">Add Question</a></li>
												<li><a href="manage-question.jsp">Manage Question</a></li>
											</ul>
										</div>
									</li>
									<li><a href="payment-management.jsp" class="">Payment Management</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#order" data-toggle="collapse" class="collapsed"><i class="lnr lnr-pencil"></i> <span>Order Management</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="order" class="collapse ">
								<ul class="nav">
									<li><a href="order-management.jsp" class="">Order Details</a></li>
									<li><a href="order-documents.jsp" class="">Order Documents</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#supplier" data-toggle="collapse" class="collapsed"><i class="fa fa-handshake-o"></i><span>Supplier <font> Management</font></span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="supplier" class="collapse ">
								<ul class="nav">
									<li><a href="add-supplier.jsp" class="">Add Supplier</a></li>
									<li><a href="manage-supplier.jsp" class="">Manage Spplier</a></li>
								</ul>
							</div>
						</li>
						<li><a href="order-to-supplier.jsp" class=""><i class="lnr lnr-spell-check"></i> <span>Order-To-Supplier <font>Management</font></span></a></li>
						<li>
							<a href="#location" data-toggle="collapse" class="collapsed"><i class="fa fa-location-arrow"></i> <span>Location Management</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="location" class="collapse ">
								<ul class="nav">
									<li><a href="#area" data-toggle="collapse" class="collapsed"><i class="fa fa-map-pin"></i>Area Management<i class="icon-submenu lnr lnr-chevron-left"></i></a>
										<div id="area" class="collapse">
											<ul class="nav">
												<li><a href="add-area.jsp">Add Area</a></li>
												<li><a href="manage-area.jsp">Manage Area</a></li>
											</ul>
										</div>
									</li>
									<li><a href="#city" data-toggle="collapse" class="collapsed"><i class="fa fa-map-marker"></i>City Management<i class="icon-submenu lnr lnr-chevron-left"></i></a>
										<div id="city" class="collapse">
											<ul class="nav">
												<li><a href="add-city.jsp">Add City</a></li>
												<li><a href="manage-city.jsp">Manage City</a></li>
											</ul>
										</div>
									</li>
									<li><a href="#state" data-toggle="collapse" class="collapsed"><i class="fa fa-building-o"></i>State Management<i class="icon-submenu lnr lnr-chevron-left"></i></a>
										<div id="state" class="collapse">
											<ul class="nav">
												<li><a href="add-state.jsp">Add State</a></li>
												<li><a href="manage-state.jsp">Manage State</a></li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#support" data-toggle="collapse" class="collapsed"><i class="fa fa-exclamation-circle"></i> <span>User Support</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="support" class="collapse ">
								<ul class="nav">
									<li><a href="feedback-management.jsp" class="">Feedback Management</a></li>
									<li><a href="inquiry-management.jsp" class="">Inquiry Management</a></li>
									<li><a href="complaint-management.jsp" class="">Complaint Management</a></li>
								</ul>
							</div>
						</li>
						<li><a href="portfolio-management.jsp" class=""><i class="lnr lnr-picture"></i> <span>Portfolio Management</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12"><h3 class="page-title">Title<a href="#"><button type="button" class="btn btn-default right"><i class="fa fa-plus-square"></i> Add Button</button></a></div></h3>
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<!-- TABLE STRIPED -->
							<div class="panel">
								<div class="panel-heading">
									<div class="row">
										<div class="col-md-12">
											<h3 class="panel-title">Heading</h3>	
										</div>
									</div>
								</div>
								<div class="panel-body">
									<table id="datatable" class="table table-striped">
										<thead>
											<tr>
												<th>#</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Username</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Username</th>
												<th>First Name</th>
												<th>Last Name</th>
												<th>Username</th>
												<th>Last Name</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Steve</td>
												<td>Jobs</td>
												<td>@steve</td>
												<td>Steve</td>
												<td>Jobs</td>
												<td>@steve</td>
												<td>Steve</td>
												<td>Jobs</td>
												<td>@steve</td>
												<td>Jobs</td>
												<td>
													<button class="btn btn-action-edit"><span class="fa fa-pencil"></span></button>&nbsp;
													<button class="btn btn-action-delete"><span class="fa fa-trash"></span></button>
												</td>
											</tr>
										</tbody>
									</table>
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
	<script type="text/javascript" src="vendor/DataTables/datatables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
    		$('#datatable').DataTable();
		} );
	</script>
	

</body>
</html>