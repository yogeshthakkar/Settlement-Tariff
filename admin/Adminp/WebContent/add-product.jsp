<%@page import="com.bean.addstate"%>
<%@page import="com.dao.Addstate"%>
<%@page import="com.bean.pgdetails"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.pgdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add product</title>
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
																				<%
									pgdao adao=new pgdao();
										List<pgdetails> c1=adao.getAllpg();
									%>							
			
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">Add PG Details</h3><div class="panel-heading">
									</div>
								<div class="panel-body">
									<form action="addpg" method="post" enctype="multipart/form-data">
									
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Name</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput" placeholder="Product Name" name="name"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="select1"><span>Category</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select1" name="category">
													<option>select category</option>
														<option>Flate</option>
														<option>Apartment</option>
														<option>Tenament</option>												
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>Sub-Category</span></label>
											<div class="col-md-8">
												<select class="form-control" id="select" name="sub_cat">
													<option name="sub-cat">select sub-category</option>
													<option>1BHK</option>
													<option>2BHK</option>
													<option>3BHK</option>
													<option>4BHK</option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
						
										<div class="form-group">
											<label class="col-md-2 control-label" for="multiline"><span>Address</span></label>
											<div class="col-md-8">
												<textarea class="form-control" id="multiline" rows="4" placeholder="Desc..." name="address"></textarea>
											</div>
											<div class="clearfix"></div>
										</div>
										
										<div class="form-group"> 
											<label class="col-md-2 control-label" for="select"><span>State</span></label>
											<div class="col-md-8">
												<select class="form-control" id="s" name="state"  onchange="getcity()">
												<option id="s" name="state">Select state</option>
												<%
												List<addstate> list=Addstate.getAllstate();
													for(addstate a:list)
													{%>
														<option id="state" name="state" value="<%=a.getS_id()%>"><%=a.getS_name() %></option>
													<%} %>
														</select>
											</div>
											<div class="clearfix"></div>
										</div>
										
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>City</span></label>
											<div class="col-md-8">
												<select class="form-control" id="c" name="c" onchange="getArea()">
												<option id="c" name="c">Select City</option>													
												</select>
											</div>
											<div class="clearfix"></div>
										</div>

								
										<div class="form-group">
											<label class="col-md-2 control-label" for="select"><span>Area</span></label>
											<div class="col-md-8">
												<select class="form-control" id="a" name="a">
													<option id="a" name="a">select Area</option>
												</select>
											</div>
											<div class="clearfix"></div>
										</div>
										
										
										<div class="form-group">
											<label class="col-md-2 control-label"><span>Image 1</span></label>
											<div class="col-md-8">
												<img id="uploadPreview1" class="thumbnail" />
												<input id="uploadImage1" type="file" name="myphoto1" class="form-control" onchange="PreviewImage1();" />
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><span>Image 2</span></label>
											<div class="col-md-8">
												<img id="uploadPreview2" class="thumbnail" />
												<input id="uploadImage2" type="file" name="image2" class="form-control" onchange="PreviewImage2();" />
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><span>Image 3</span></label>
											<div class="col-md-8">
												<img id="uploadPreview3" class="thumbnail" />
												<input id="uploadImage3" type="file" name="image3" class="form-control" onchange="PreviewImage3();" />
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"><span>Image 4</span></label>
											<div class="col-md-8">
												<img id="uploadPreview4" class="thumbnail" />
												<input id="uploadImage4" type="file" name="image4" class="form-control" onchange="PreviewImage4();" />
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Price</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput" placeholder="Enter price" name="price"></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Facilities</span></label>
											<div class="col-md-8">
											<input type="Checkbox" name="ser" value="AEC" cheked>	AEC
											<input type="Checkbox" name="ser" value="Parking" cheked>	Parking
											<input type="Checkbox" name="ser" value="Furniture" cheked>	Furniture
											<input type="Checkbox" name="ser" value="Water" cheked>	Water
											<input type="Checkbox" name="ser" value="Food" cheked>	food
											<input type="Checkbox" name="ser" value="Balcony" cheked>	Balcony
											<input type="Checkbox" name="ser" value="Electicity" cheked>	Status of Electricity
											<input type="Checkbox" name="ser" value="Lift" cheked>	Lift
											
											</checkbox></div>
											<div class="clearfix"></div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label" for="textinput"><span>Phone</span></label>
											<div class="col-md-8"><input type="text" class="form-control" id="textinput" placeholder="Enter Phone number" name="phone"></div>
											<div class="clearfix"></div>
										</div>
										
										
										<div class="form-group">
											<label class="col-md-2 control-label"><span>What Next?</span></label>
											<div class="col-md-8">
												<button type="submit" class="btn btn-success" name="submit" value="add"><i class="fa fa-check-circle"></i> Submit</button>
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
	
	
	
	
    <script type="text/javascript">
    function getcity() {
        alert("Function called");
        var area = document.getElementById("s");
       // alert(area.value);
        if (area.value == 0)
        {
            city.innerHTML = "<option>--Select State--</option>";
        } else
        {
            $.ajax({
                url: "${pageContext.request.contextPath}/GetCityByState",
                type: "GET",
                data: {sd: area.value},
                success: function (data) {
                  //alert("Server response is = " + data);
                   $('#c').children().remove().end().append('<option>-------------------Select City-------------------</option>');
                    var result = data.split(",");
                  //alert(result);
                    for (var ia = 0; ia < result.length-1 ; ia++) { 
                        var subcat = result[ia].split(":");
                      $('#c').append('<option value="' + subcat[0] + '">' + subcat[1] + '</option>');
                    }
                }
            });
        }
    }
    
    function getArea() {
        alert("Function called");
        var area = document.getElementById("c");
        //alert(area.value);
        if (area.value == 0)
        {
            area.innerHTML = "<option>--Select City--</option>";
        } else
        {
            $.ajax({
                url: "${pageContext.request.contextPath}/GetAreaByCity",
                type: "GET",
                data: {sd: area.value},
                success: function (data) {
            //      alert("Server response is = " + data);
                   $('#a').children().remove().end().append('<option>-------------------Select Area-------------------</option>');
                    var result = data.split(",");
                //  alert(result);
                    for (var ia = 0; ia < result.length-1 ; ia++) { 
                        var subcat = result[ia].split(":");
                      $('#a').append('<option value="' + subcat[0] + '">' + subcat[1] + '</option>');
                    }
                }
            });
        }
    }
</script>  
	
	
	
	
	
	
	
	
	
	
	
	
	<script src="scripts/klorofil-common.js"></script>
	<script>

	function PreviewImage1() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage1").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview1").src = oFREvent.target.result;
        };
    };

	function PreviewImage2() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage2").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview2").src = oFREvent.target.result;
        };
    };

	function PreviewImage3() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage3").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview3").src = oFREvent.target.result;
        };
    };

	function PreviewImage4() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage4").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview4").src = oFREvent.target.result;
        };
    };
    </script>

</body>
</html>