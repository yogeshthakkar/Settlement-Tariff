<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order to supplier</title>
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
						<li><a href="order-to-supplier.jsp" class="active"><i class="lnr lnr-spell-check"></i> <span>Order-To-Supplier <font>Management</font></span></a></li>
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
					<h3 class="page-title">Order To Supplier</h3>
					<div class="row">
						<div class="col-md-12">
							<!-- INPUTS -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Form</h3>
								</div>
								<div class="panel-body">
									<form>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Name</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput" placeholder="name"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="pwd"><span>Password</span></label>
											<div class="col-md-8"><input type="password" class="form-control" id="pwd" value="password"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="multiline"><span>Address</span></label>
											<div class="col-md-8">
												<textarea class="form-control" id="multiline" rows="4"></textarea>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>Select</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select">
													<option>option 1</option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><span>Gender</span></label>
											<div class="col-md-8">
												<label class="fancy-radio">
													<input type="radio" name="gender"><span><i></i>Male</span>
												</label>
												<label class="fancy-radio">
													<input type="radio" name="gender"><span><i></i>Female</span>
												</label>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><span>Hobby</span></label>
											<div class="col-md-8">
												<label class="fancy-checkbox">
													<input type="checkbox" name="hobby1"><span>Hobby1</span>
												</label>
												<label class="fancy-checkbox">
													<input type="checkbox" name="hobby2"><span>Hobby2</span>
												</label>
												<label class="fancy-checkbox">
													<input type="checkbox" name="hobby3"><span>Hobby3</span>
												</label>
												<label class="fancy-checkbox">
													<input type="checkbox" name="hobby4"><span>Hobby4</span>
												</label>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><span>What Next?</span></label>
											<div class="col-md-8">
												<button type="submit" class="btn btn-success"><i class="fa fa-check-circle"></i> Submit</button>
												<button type="reset" class="btn btn-primary"><i class=	"fa fa-refresh"></i> Reset</button>
											</div>
											<div class="clearfix"></div>
										</div>
									</form>
								</div>
							</div>
							<!-- END INPUTS -->
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