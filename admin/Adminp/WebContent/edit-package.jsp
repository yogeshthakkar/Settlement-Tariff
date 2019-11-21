<%@page import="com.bean.Addpackage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit package</title>
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

<%Addpackage add=(Addpackage)request.getAttribute("s"); 


%>
	<!-- WRAPPER -->
	<div id="wrapper">
<%@include file="Navbar.jsp" %>
	
		<%@include file="leftsider.jsp" %>
				<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">Edit Package</h3>
					<div class="row">
						<div class="col-md-12">
							<!-- INPUTS -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Form</h3>
								</div>
								<div class="panel-body">
									<form action="addpackage" method="post">
									<input type="hidden" id="p_id" name="p_id" value="<%=add.getP_id()%>">
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Name</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput" name="p_name" value="<%=add.getP_name()%>"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="multiline"><span>Description</span></label>
											<div class="col-md-8">
												<textarea class="form-control" id="multiline" rows="4"  name="p_desc"><%=add.getP_desc()%></textarea>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput2"><span>Price</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput2" name="price" value="<%=add.getPrice()%>"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput3"><span>Discount Price</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput3"  name="discount_pri" value="<%=add.getDiscount_pri()%>"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="file"><span>Image</span></label>
											<div class="col-md-8"><input type="file" class="form-control" id="file" name="image" value="<%=add.getImage()%>"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><span>What Next?</span></label>
											<div class="col-md-8">
												<a href="manage-pacakage.jsp"><button type="submit" class="btn btn-success" name="submit" value="Update"><i class="fa fa-check-circle"></i> Update</button>
												<button type="reset" class="btn btn-primary"><i class=	"fa fa-refresh"></i> Reset</button>
											</div>
											<div class="clearfix"></div>
										</div>
									</form>
								</div>
							</div>
					0		<!-- END INPUTS -->
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