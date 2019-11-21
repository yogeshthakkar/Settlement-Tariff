<%@page import="com.bean.pgdetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit product</title>

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
<%pgdetails add=(pgdetails)request.getAttribute("s"); 


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
					<h3 class="page-title">Edit Product</h3>
					<div class="row">
						<div class="col-md-12">
							<!-- INPUTS -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Form</h3>
								</div>
								<div class="panel-body">
									<form action="addpg" method="post">
									<input type="hidden" id="p_id" name="p_id" value="<%=add.getP_id()%>">
									
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Name</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput" name="name" value="<%=add.getName()%>"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>Sub-Category</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select"  name="category">
													<option><%=add.getCategory()%></option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select1"><span>Category</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select1"  name="sub_cat">
													<option><%=add.getSub_cat()%></option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="multiline"><span>Description</span></label>
											<div class="col-md-8">
												<textarea class="form-control" id="multiline" rows="4" placeholder="" name="address"><%=add.getAddress()%></textarea>
											</div>
											<div class="clearfix"></div>
										</div>
																				
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>Area</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select" name="area">
								 				<option><%=add.getA_name()%></option>	
								 			</select>
											</div>
											<div class="clearfix"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>City</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select" name="city">
													<option><%=add.getC_name()%></option>
											 				</select>
											</div>
											<div class="clearfix"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>State</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select" name="state">
													<option><%=add.getS_name()%></option>
														</select>
											</div>
											<div class="clearfix"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label" for="file"><span>Image 1</span></label>
											<div class="col-md-8"><input type="file" class="form-control" id="file" name="myphoto1"  value=""><%=add.getImage1()%></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="file1"><span>Image 2</span></label>
											<div class="col-md-8"><input type="file" class="form-control" id="file" name="image2"  value=""><%=add.getImage2()%></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="file2"><span>Image 3</span></label>
											<div class="col-md-8"><input type="file" class="form-control" id="file" name="image3"  value=""><%=add.getImage3()%></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="file3"><span>Image 4</span></label>
											<div class="col-md-8"><input type="file" class="form-control" id="file" name="iamge4"  value=""><%=add.getImage4()%></div>
											<div class="clearfix"></div>
										</div>
											<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Price</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput" placeholder="" name="price" value="<%=add.getPrice()%>"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Facilities</span></label>
											<div class="col-md-8">
											<input type="Checkbox" name="ser" <%=add.getFacilities().contains("AEC")?"checked='checked'":""%>  value="AEC" cheked>AEC
											<input type="Checkbox" name="ser" <%=add.getFacilities().contains("Parking")?"checked='checked'":""%> value="Parking" cheked>Parking
											<input type="Checkbox" name="ser" <%=add.getFacilities().contains("Furniture")?"checked='checked'":""%> value="Furniture" cheked>	Furniture
											<input type="Checkbox" name="ser" <%=add.getFacilities().contains("Water")?"checked='checked'":""%> value="Water" cheked>Water
											<input type="Checkbox" name="ser" <%=add.getFacilities().contains("Food")?"checked='checked'":""%> value="Food" cheked>	food
											<input type="Checkbox" name="ser" <%=add.getFacilities().contains("Balcony")?"checked='checked'":""%> value="Balcony" cheked>Balcony
											<input type="Checkbox" name="ser" <%=add.getFacilities().contains("Electicity")?"checked='checked'":""%> value="Electicity" cheked>	Status of Electricity
											<input type="Checkbox" name="ser" <%=add.getFacilities().contains("Lift")?"checked='checked'":""%> value="Lift" cheked>	Lift
											</checkbox></div>
											
											<div class="clearfix"></div>
										</div>
										
				
										<div class="form-group">
											<label class="col-md-2 control-label"><span>What Next?</span></label>
											<div class="col-md-8">
												<button type="submit" class="btn btn-success"  name="submit" value="update"><i class="fa fa-check-circle"></i>Update</button>
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