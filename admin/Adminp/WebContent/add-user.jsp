<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add user</title>
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
					<h3 class="page-title">Add User</h3>
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
											<label class="col-md-2 control-label" for="textinput"><span>First Name</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput" placeholder="First Name"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput1"><span>Last Name</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput1" placeholder="Last Name"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput2"><span>Mobile</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput2" placeholder="Mobile"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput3"><span>Email</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput3" placeholder="Email ID"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="pwd"><span>Password</span></label>
											<div class="col-md-8"><input type="password" class="form-control" id="pwd" value="password"></div>
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
											<label class="col-md-2 control-label" for="multiline"><span>Address</span></label>
											<div class="col-md-8">
												<textarea class="form-control" id="multiline" rows="4"></textarea>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>Area</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select">
													<option>option 1</option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select1"><span>City</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select1">
													<option>option 1</option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select2"><span>State</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select2">
													<option>option 1</option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select3"><span>User Type</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select3">
													<option>option 1</option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="file"><span>Image</span></label>
											<div class="col-md-8">
												<img id="uploadPreview" class="thumbnail" />
												<input id="uploadImage" type="file" name="myPhoto" class="form-control" onchange="PreviewImage();" />
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select4"><span>Security Question</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select4">
													<option>option 1</option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput5"><span>Answer</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput5" placeholder="Last Name"></div>
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
	<script>

	function PreviewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };

	 


	</script>

</body>
</html>