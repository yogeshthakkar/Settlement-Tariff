<%@page import="com.bean.Student"%>
<%@page import="com.bean.propertybean"%>
<%@page import="com.dao.Addstate"%>
<%@page import="com.bean.addstate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Post Property</title>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		
		var request=new XMLHttpRequest();  
		function searchInfo()
		{  
			var fname=document.frm.name.value;  
			var url="AjaxSearch2.jsp?val="+fname;  
		  	try
		  	{  
				request.onreadystatechange=function()
				{  
					if(request.readyState==4)
					{  
						var val=request.responseText;  
						document.getElementById('tops').innerHTML=val;  
					}  
				}  
				request.open("GET",url,true);  
				request.send();  
			}
		  	catch(e)
		  	{
		  		alert("Unable to connect to server");
		  	}  
		}  
	</script>
	<!-- //Meta tags -->
	<!-- Stylesheet -->
	<link href="csspp1/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
	<link rel="stylesheet" href="csspp1/jquery-ui.css" />
	<link href="csspp1/style.css" rel='stylesheet' type='text/css' />
	<link href="csspp1/bootstrap.css" rel='stylesheet' type='text/css' />
	<!-- //Stylesheet -->
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Megrim" rel="stylesheet">
	<!--//fonts-->
</head>
<body class="body-img">
		
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
					</li>
					<li>Post property Form</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	

		<!--background-->
	<h1>Post property Form </h1>
	
	<div class="booking-form-w3layouts">
		<!-- Form starts here -->
		<form action="propertycon" method="post" enctype="multipart/form-data">
		<div class="radio-section">
				<h6>I want to:</h6>
				<ul class="radio-buttons-w3-agileits">
					<li>
						<input type="radio" id="a-option" name="rent"  value="House">
						<label for="a-option">Rent - out house</label>
						<div class="check"></div>
					</li>
					<li>
						<input type="radio" id="b-option" name="rent"  value="PG">
						<label for="b-option">Rent - out PG</label>
						<div class="check">
							<div class="inside"></div>
						</div>
					</li>
				</ul>
				<div class="clear"></div>
			</div>
			
			<h2 class="sub-heading-agileits">Property Details</h2>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input type="text" name="address" placeholder="Address" name="address"required="">
				</div>
			
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<select class="form-control" name="state" id="s" onchange="getcity()" onclick="CheckState(this.value)" style="height: 46px;">
										<option id="s" name="state"> Select State</option>
												<%
												List<addstate> list=Addstate.getAllstate();
													for(addstate a:list)
													{%>
														<option id="s" name="state" value="<%=a.getS_id()%>"><%=a.getS_name() %></option>
													<%} %>
					<!-- 					 	 	<option  id="s"name="state"  value="others">others</option>
											 		<input type="text" name="state" id="state" placeholder="Please Specify Your State.."  required=""  style='display:none'>	
					 -->						 			</select>
				</div>
				</div>
						<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<select class="form-control" id="c" name="city" onchange="getArea()" onchange="CheckCity(this.value)" style="height: 46px;">
										<option id="c" name="c">Select City</option>
								<!-- 		<option name="area"  value="others">others</option>
								 -->		 	 	<!-- <option  id="c" name="c"  value="others">others</option>
											 		<input type="text" name="city" id="city" placeholder="Please Specify Your City.."  required=""  style='display:none'>	
												 -->
											</select>
				</div>
		&emsp;&emsp;
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<select class="form-control" name="area"  id="a" onclick="CheckArea(this.value)" style="height: 46px;">
										<option id="a" name="a">Select Area</option>
										<!-- <option id="a" name="a"  value="others">others</option>
										<input type="text" name="area" id="area" placeholder="Please Specify Your Area.."  required=""  style='display:none'>	
										 -->		
									</select><br>
				</div>
				</div>
							<div class="main-flex-w3ls-sectns">
	
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<select class="form-control" name="category" style="height: 46px;">
										<option>Select Category</option>
											<option>Flate</option>
											<option>Apartment</option>
											<option>Tenament</option>			
										</select>
				</div>
		&emsp;&emsp;
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<select class="form-control" name="sub_cat" style="height: 46px;">
					<option>Select Sub category</option>
													<option>1BHK</option>
													<option>2BHK</option>
													<option>3BHK</option>
													<option>4BHK</option>
				</select>
				</div>
				</div>
						<div class="main-flex-w3ls-sectns">
				<div class="main-flex-w3ls-sectns">
				<div class="" align="left"><br>
					<input type="text" placeholder="Rent price" required=" " name="price">
				</div>
				</div>
		</div>
				<div class="radio-section">
				<h6>Status:</h6>
				<ul class="radio-buttons-w3-agileits">
					<li>
						<input type="radio" id="a-option" name="status"  value="Active">
						<label for="a-option">Active</label>
						<div class="check"></div>
					</li>
					<li>
						<input type="radio" id="b-option" name="status"  value="Inactive">
						<label for="b-option">Inactive</label>
						<div class="check">
							<div class="inside"></div>
						</div>
					</li>
				</ul>
				<div class="clear"></div>
			</div>
		
			<div class="radio-section">
				<h6>Amenities :</h6>
		
				<ul class="radio-buttons-w3-agileits">
					<li>
						<input type="Checkbox" id="a-option" name="ser" value="Lift">
						<label for="a-option">Lift</label>
						<div class="check"></div>
					</li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="Checkbox" id="b-option" name="ser" value="Parking">
						<label for="b-option">Parking</label>
						<div class="check">
							<div class="inside"></div>
						</div>
					</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li>
						<input type="Checkbox" id="a-option" name="ser" value="Wifi">
						<label for="a-option">24*7wifi</label>
						<div class="check"></div>
					</li>
 					<li>
 						<input type="Checkbox" id="b-option" name="ser" value="Gas"> 
							<label for="b-option">Gas Pipeline</label>
						<div class="check">
							<div class="inside"></div>
						</div>
					</li><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li>
						<input type="Checkbox" id="a-option" name="ser" value="Games">
						<label for="a-option">Indoor Games</label>
						<div class="check"></div>
					</li>
					<li>
						<input type="Checkbox" id="b-option" name="ser" value="Club">
						<label for="b-option">club House</label>
						<div class="check">
							<div class="inside"></div>
						</div>
					</li>
						<li>&nbsp;
						<input type="Checkbox" id="a-option" name="ser" value="Garden">
						<label for="a-option">Garden</label>
						<div class="check"></div>
					</li>
					<li>
						<input type="Checkbox" id="b-option" name="ser" value="Fire">
						<label for="b-option">Fire Safety</label>
						<div class="check">
							<div class="inside"></div>
						</div>
					</li>
				</ul>
		</div>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input id="" name="image1" type="File" placeholder="" value="Upload File" onfocus="';" onblur=""
					    required="" >
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input id="" name="image2" type="File" placeholder="" value="Upload File" onfocus="';" onblur=""
					    required="">
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input id="" name="image3" type="File" placeholder="" value="Upload File" onfocus="';" onblur=""
					    required="">
				</div>
				
				<!-- <div class="field-agileinfo-spc form-w3-agile-text1" align==>
				<br>	<input id="" name="Text" type="File" placeholder="" value="Upload File" onfocus="';" onblur=""
					    required="">
				</div>
				 -->
			</div>
		<h3 class="sub-heading-agileits">Personal Details</h3>
			<div class="main-flex-w3ls-sectns">
				<div class="field-agileinfo-spc form-w3-agile-text1">
					<input type="text" name="name" placeholder="Full Name" required="">
				</div>
				<div class="field-agileinfo-spc form-w3-agile-text2">
					<input type="text" name="phone" placeholder="Phone Number" required="">
				</div>
			</div>
			<div class="field-agileinfo-spc form-w3-agile-text">
				<input type="email" name="email" placeholder="Email">
						</div>
<%
if(session.getAttribute("s")!=null)
{
	Student stu=null;
	stu=(Student)session.getAttribute("s");
	%>
						
						
		<input type="hidden" name="user_id"  value="<%=stu.getU_id()%>">
	
			<input type="submit" value="Add" name="submit">
			<input type="reset" value="Clear Form">
			<div class="clear"></div>
		<%-- 		<%}else{ %>
				<javascript>
				alert("Please Log in");
				</javascript>--%>		
					<%} %> 
		</form>
</div>			
	<script type="text/javascript" src="jspp1/jquery-2.2.3.min.js"></script>
	<!-- Time Js -->
	<script type="text/javascript" src="jspp1/wickedpicker.js"></script>
	<script type="text/javascript">
		$('.timepicker,.timepicker1').wickedpicker({
			twentyFour: false
		});
	</script>
	<!--// Time Js -->
	<!-- Calendar Js -->
	<script src="jspp1/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		});
		
	</script>
	 <script type="text/javascript">
    function getcity() {
       // alert("Function called");
        var area = document.getElementById("s");
       // alert(area.value);
       /*  if (area.value == 0)
        {
            city.innerHTML = "<option>--Select State--</option>";
        } 
        */if(area.value=='others')
        	{
        		      /*  element.style.display='block'; */
        		     // alert('area alert');
     					CheckState(area.value)
        	}
        else{
            $.ajax({
                url: "${pageContext.request.contextPath}/GetCityByState",
                type: "GET",
                data: {sd: area.value},
                success: function (data) {
               //   alert("Server response is = " + data);
                   $('#c').children().remove().end().append('<option>-------------------Select City-------------------</option>');
                    var result = data.split(",");
           //       alert(result);
                    for (var ia = 0; ia < result.length-1 ; ia++) { 
                        var subcat = result[ia].split(":");
                      $('#c').append('<option value="' + subcat[0] + '">' + subcat[1] + '</option>');
                    }
                }
            });
        }
    }
    
    function getArea() {
       // alert("Function called");
        var area = document.getElementById("c");
       //alert(area.value);
       /*  if (area.value == 0)
        {
            area.innerHTML = "<option>--Select City--</option>";
        } */
        if(area.value=='others')
    	{
    		      /*  element.style.display='block'; */
    		     // alert('area alert');
 				CheckCity(area.value)
    	}
   else
        {
            $.ajax({
                url: "${pageContext.request.contextPath}/GetAreaByCity",
                type: "GET",
                data: {sd: area.value},
                success: function (data) {
          //        alert("Server response is = " + data);
                   $('#a').children().remove().end().append('<option>-------------------Select Area-------------------</option>');
                    var result = data.split(",");
           //      alert(result);
                    for (var ia = 0; ia < result.length-1 ; ia++) { 
                        var subcat = result[ia].split(":");
                      $('#a').append('<option value="' + subcat[0] + '">' + subcat[1] + '</option>');
                    }
                }
            });
        }
    }
    

    function CheckState(val){
    	var element=document.getElementById('state');
       if(val=='others')
     	element.style.display='block';
       else
    	   element.style.display='none';
     }


    function CheckCity(val){
    	var element=document.getElementById('city');
       if(val=='others')
       element.style.display='block';
       else
    	   element.style.display='none';
    }

    function CheckArea(val){
    	var element=document.getElementById('area');
       if(val=='others')
       element.style.display='block';
       else
    	   element.style.display='none';
    }

    
    
    
    
</script>  
	
	
	<!-- //Calendar Js -->
	<div>
 <%@include file="footer.jsp" %>
 </div>
</body>
</html>