<%-- <%@page import="com.bean.Dietician"%>
<%@page import="com.bean.GymOwner"%>
<%@page import="com.bean.User"%>
 --%><%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	var request=new XMLHttpRequest();   
	function searchInfo()
	{  
		var search=document.getElementById("search") .value;
		var searchby=document.getElementById("searchby") .value;
		var url="fetch.jsp?name="+search+"&s_by="+searchby;  
	  	try
	  	{  
			request.onreadystatechange=function()
			{  
				if(request.readyState==4)
				{  
					var val=request.responseText;  
					document.getElementById('ajaxGetUserServletResponse').innerHTML=val;  
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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<!-- Fonts-->
		<link rel="stylesheet" type="text/css" href="assets/fonts/fontawesome/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="assets/fonts/themify-icons/themify-icons.css">
		<!-- Vendors-->
		<link rel="stylesheet" type="text/css" href="assets/vendors/bootstrap4/bootstrap-grid.min.css">
		<link rel="stylesheet" type="text/css" href="assets/vendors/magnific-popup/magnific-popup.min.css">
		<link rel="stylesheet" type="text/css" href="assets/vendors/owl.carousel/owl.carousel.css">
		<link rel="stylesheet" type="text/css" href="assets/vendors/_jquery/jquery.min.css">
		<!-- <link rel="stylesheet" type="text/css" href="assets/vendors/bootstrap4/bootstrap-grid.min.css"> -->
		<!-- <link rel="stylesheet" type="text/css" href="assets/vendors/bootstrap4/bootstrap-grid.min.css"> -->
		<!-- App & fonts-->
		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i&amp;amp;subset=latin-ext">
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
			<div class="page-wrap">
			<div class="slider__item" style="background-image: url('assets/img/pexels-photo-349608-2100x900-c-default.jpg');">
			<!-- header -->
			<header class="header header__style-02">
				<div class="container">
					<div class="header__logo"><a href="index.jsp"><img src="assets/img/download.png" alt=""/></a></div>
					<div class="header__toogleGroup">
						<div class="header__chooseLanguage">
						</div>
												
					</div>									
									
					<!-- consult-nav -->
					<nav class="consult-nav">
						
						<!-- consult-menu -->
						<ul class="consult-menu">
							<li class="current-menu-item"><a href="index.jsp">Home</a>
							</li>
							<li><a href="about.jsp"><font color="#f39c12">about</font></a>
							</li>
							<li class="menu-item-has-children"><a href="#"><font color="#f39c12">Services</font></a>
								<ul class="sub-menu">
									<li><a href="comming-soon.jsp">Gyms</a>
									</li>
										<li><a href="typography.jsp">Dieticians</a>
									</li>
									<li><a href="404.jsp">404</a>
									</li>
								
								</ul>
							</li>
			
							<li class="menu-item-has-children"><a href="blog.jsp"><font color="#f39c12">Feedback</font></a>
								<ul class="sub-menu">
									<li><a href="blog-detail.jsp">Blog detail</a>
									</li>
								</ul>
							</li>
							<li><a href="contact.jsp"><font color="#f39c12">contact</font></a>
							</li>
					 		<%
							if(session.getAttribute("s")==null) { 
							%>
					 	 	<li ><a href="register.jsp"><font color="#f39c12">Register</font></a>
							</li>
							<li ><a href="login.jsp"><font color="#f39c12">login</font></a>
							</li>
									<%}
					
							else
							{
								String name=null;
								Student s;
								if(session.getAttribute("s")!=null)
								{
								s = (Student)session.getAttribute("user");
								 name=s.getF_name()  ;
								}
								/* if(session.getAttribute("gymowner")!=null)
								{
									g=(GymOwner)session.getAttribute("gymowner");
									 name=g.getFname()+ "Gym Owner";
								}
								if(session.getAttribute("dietician")!=null)
								{
									d=(Dietician)session.getAttribute("dietician");
									 name=d.getFname()+ " Dietician";
								} */	
							%>
							<li class="menu-item-has-children"><a href="#">Profile</a>
								<ul class="sub-menu">
									<li><a href="MyProfile.jsp">My Profile </a>
								
									</li>
										<li><a href="typography.jsp">Change Password</a>
									</li>
								</ul>
							</li>
							<li ><a href="logout.jsp"><font color="#f39c12">logout<font color="#f39c12"></font></a>
							</li>
							<li ><h4 ><font color="white">Welcome     <%=name%></font></h4>
							</li>
							
							<%
							} %>
							</ul><!-- consult-menu -->
						 
						<div class="navbar-toggle"><span></span><span></span><span></span></div>
					</nav><!-- End / consult-nav -->
			
                  </button>
               </span>
         
               <br>
               <br>
             <form id="frm" name="frm" >
		<div class="row">
  <div class="col-lg-offset-3 col-lg-6">
    <div class="input-group">
      <span class="input-group-btn">
     <select class="btn btn-default" id="searchby" style="width:120px; font-size: 12px; background-color: #f7f7f7; border-color: rgb(235, 235, 235);" required >
     <option value="">Search By</option>
		<option value="1">Gym Owner</option>
		<option value="2"> Dietician</option>
		</select>
      </span>
      <input type="text" class="form-control"  name="search" id="search" placeholder="Enter your text ">
      <span class="input-group-btn">
        <button class="btn btn-secondary" type="button" onclick="searchInfo()">Search</button>
      </span>
    </div>
  </div>
</div>

	</form>
	
	
	<br>
	<br>

	<strong><h1><font color="white">Result</font></h1></strong>
	<div type="text" id="ajaxGetUserServletResponse" > </div>
               
        
</body>
</html>