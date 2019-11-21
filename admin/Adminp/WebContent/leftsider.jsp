<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="index.jsp" class="active"><i class="lnr lnr-power-switch"></i> <span>Dashboard</span></a></li>
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
							<a href="#product" data-toggle="collapse" class="collapsed"><i class="fa fa-shopping-bag"></i> <span>PG Management</span><i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="product" class="collapse ">
								<ul class="nav">
									<li><a href="add-product.jsp" class="">Add PG</a></li>
									<li><a href="manage-product.jsp" class="">Manage PG</a></li>
								</ul>
							</div>
						</li>
				<!-- 		<li>
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
 -->						<li>
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
<!-- 									<li><a href="inquiry-management.jsp" class="">Inquiry Management</a></li>
									<li><a href="complaint-management.jsp" class="">Complaint Management</a></li>
 -->								</ul>
							</div>
						</li>
					<!-- 	<li><a href="portfolio-management.jsp" class=""><i class="lnr lnr-picture"></i> <span>Portfolio Management</span></a></li>
					 --></ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		
</body>
</html>