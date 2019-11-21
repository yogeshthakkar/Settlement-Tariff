<%@page import="com.bean.propertybean"%>
<%@page import="com.bean.Student"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>house Info</title>
<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
<style>
	.for-HeadClr{
			font-size:20px;
	color:#09F;
	font-style:italic;	
	margin:center;
	padding:20px;
	/* font-weight:bold;	
	 */border-spacing:100;
	}
	
	.for-tableLeft{
	margin-top:10px;
	font-size:17px;
	margin-left:100px;
	

		
	}
	.for-color{
		color:#000;
	}
	.for-price{
	/* font-weight:bolder;	
	 */
	 		font-style:italic;	
	 		
		font-size:20px;
		color:#09f;
	}
	
</style>

	<!--//tags -->
	<link href="cssf1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="cssf1/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="cssf1/font-awesome.css" rel="stylesheet">
	<!--pop-up-box-->
	<link href="cssf1/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="cssf1/jquery-ui1.css">
	<!-- flexslider -->
	<link rel="stylesheet" href="cssf1/flexslider.css" type="text/css" media="screen" />
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

</head>
<body>
<%propertybean add=(propertybean)request.getAttribute("s");  %><%@include file="header.jsp" %>
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
					<li>House page</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- Single Page -->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<!-- tittle heading -->
			<h3 class="tittle-w3l">House
				<span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
			</h3>
			<!-- //tittle heading -->
			<form action="addpg" method="post">
	<%-- 		<input type="hidden" name="p_id" value="<%=add.getP_id()%>">
	 --%>		<div class="col-md-5 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">
					<%%>
						<ul class="slides">
						<%
						Connection cona=null;
						try{
							int i=Integer.parseInt(request.getParameter("id")); 
							Class.forName("com.mysql.jdbc.Driver");
							String url="jdbc:mysql://localhost:3306/test";
							cona=DriverManager.getConnection(url,"root","root");	
						String query="SELECT p.p_id,p.stateid,s.s_name,p.cityid,c.c_name,p.areaid,a.a_name,p.rent,p.addreaa,p.category,p.sub_cat,p.price,p.facility,p.image1,p.image2,p.image3,p.phone,p.email,p.name"
								+ " FROM postproperty AS p,`city` AS c,`area` AS a,`state` AS s " 
								+ " WHERE p.stateid=s.s_id AND p.cityid=c.c_id AND p.areaid=a.a_id AND  p.p_id=?";
						PreparedStatement p=cona.prepareStatement(query);
						p.setInt(1, i);
						ResultSet rs=p.executeQuery();
						while(rs.next()){						
						%>
						<% String a1=rs.getString("image1"); %>
						<%String a2=rs.getString("image2");%>
						<% String a3=rs.getString("image3"); %>
						<li data-thumb="Files//<%=a1%>">
									<div class="thumb-image">
									<img src="Files//<%=a1%>" data-imagezoom="true" class="img-responsive" alt=""> </div>
								</li>
							 <br><br>
						
							<li data-thumb="Files//<%=a2%>">
								<div class="thumb-image">
									<img src="Files//<%=a2%>" data-imagezoom="true" class="img-responsive" alt="si2"> </div>
							</li>
							<li data-thumb="Files//<%=a3%>">
								<div class="thumb-image">
									<img src="Files//<%=a3%>" data-imagezoom="true" class="img-responsive" alt=""> </div>
							</li>
							
<%-- 							<li data-thumb="Files//<%=a4%>">
								<div class="thumb-image">
									<img src="Files//<%=a4%>" data-imagezoom="true" class="img-responsive" alt=""> </div>
							</li>
 --%>						<!-- 	
							<li data-thumb="images/p1.jpg">
								<div class="thumb-image">
									<img src="images/p1.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
							</li>
							
							<li data-thumb="images/ss5.jpg">
								<div class="thumb-image">
									<img src="images/ss5.jpg" data-imagezoom="true" class="img-responsive" alt=""> </div>
							</li> -->
							 
								</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<%
			String a6=rs.getString("a_name");
			String a7=rs.getString("c_name");
			String a8=rs.getString("s_name");
			
			String a4=rs.getString("category"); 
			String a5=rs.getString("sub_cat");					
		
			%>
			<div class="col-md-7 single-right-left simpleCart_shelfItem" class="for-color">
 			<h3> <br><b><%=a6%>,<br>
 					<%=a7%>,<%=a8%>.</b></h3>
	 			<div>
		 			
				<table cellpadding="5px" cellspacing="5px" class="for-tableLeft">
				<form><br><br>
						<tr class="for-HeadClr" >
						<td><b>Category :&emsp;</b></td><td class="for-color">&emsp;<%=a4%>&emsp;</td>
						</tr>
						<tr class="for-HeadClr">
						<td><b>Sub Category :&emsp;</b></td><td class="for-color">&emsp;<%=a5%>&emsp;</td>
		 			</tr>
		 			<tr class="for-HeadClr">
		 			<td><b>
		 			Facilities :</b>
		 			</td>
		 	<!-- 	</tr>
		 			
		 			<tr>
		 	 -->		<td class="for-color">&emsp;		<input type="Checkbox" name="ser" <%=rs.getString("facility").contains("Lift")?"checked='checked'":""%>  value="Lift" cheked> A.C.
							 	</td><td></td><td class="for-color">&emsp;		<input type="Checkbox" name="ser" <%=rs.getString("facility").contains("Parking")?"checked='checked'":""%> value="Parking" cheked>Parking
							</td></tr><tr class="for-HeadClr"><td></td><td class="for-color">&emsp;					<input type="Checkbox" name="ser" <%=rs.getString("facility").contains("Wifi")?"checked='checked'":""%> value="Wifi" cheked>	Wifi
							</td><td></td><td class="for-color">&emsp;					<input type="Checkbox" name="ser" <%=rs.getString("facility").contains("Gas")?"checked='checked'":""%> value="Gas" cheked>Gas
											</td>	</tr><tr class="for-HeadClr">
											<td></td><td class="for-color">&emsp;<input type="Checkbox" name="ser" <%=rs.getString("facility").contains("Games")?"checked='checked'":""%> value="Games" cheked>Games
			</td><td></td><td class="for-color">&emsp;								<input type="Checkbox" name="ser" <%=rs.getString("facility").contains("Club")?"checked='checked'":""%> value="Club" cheked>Club
					</td></tr><tr class="for-HeadClr"><td></td><td class="for-color">&emsp;		<input type="Checkbox" name="ser" <%=rs.getString("facility").contains("Garden")?"checked='checked'":""%> value="Garden" cheked>Garden
					</td><td></td><td class="for-color">&emsp;	<input type="Checkbox" name="ser" <%=rs.getString("facility").contains("Fire")?"checked='checked'":""%> value="Fire" cheked>Fire
											</td></checkbox></div>
						 					
		 			</tr>
		 		
						<%String a9=rs.getString("price");%>
						<tr>
						</tr>
						<tr class="for-price" > 
							<td><b>Price :</b></td>
							<td class="for-color">&emsp;<%=a9 %></td>
						</tr>
						
						
						
			</form>				
			</table>
				</div>
			<br><br><br><br>

<%if(session.getAttribute("s")!=null)
{
	Student stu=null;
	stu=(Student)session.getAttribute("s"); %>
	
				<div class="occasion-cart" align="left">
					<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
				 		<form  method="post" action="contactcon">
							<fieldset>
							
								<input type="hidden" name="phone" value="<%=rs.getString("phone")%>" />
								<input type="hidden" name="email" value="<%=stu.getEmail()%>" />
								
						<%--  	<input type="hidden" name="email" value="<%=rs.getString("email")%>" />
						 --%>	 	<input type="submit" name="submit" value="contact" class="button" />
							</fieldset>
						</form>
					</div>			
				</div>
				<div class="occasion-cart" align="right">
							<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out" >
				 		<form  method="post" action="feedback.jsp">
							<fieldset>
			<%-- 					<input type="hidden" name="phone" value="<%=rs.getInt("phone")%>" />
								<input type="hidden" name="email" value="<%=stu.getEmail()%>" />
						 	<input type="hidden" name="email" value="<%=rs.getString("email")%>" />
--%>	 					<input type="submit" name="submit" value="Feedback" class="button"  />
			 					<!-- <input type="submit" name="submit" value=""  /> -->
							</fieldset>
						</form>
					</div>
				</div>
				<br>
				
<%} %>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	 <%}}
						catch(Exception e)
						{
						e.printStackTrace();}%>
					
	
									
	<!-- //Single Page -->


<%@include file="footer.jsp" %>
	<!-- js-files -->
	<!-- jquery -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //jquery -->

	<!-- popup modal (for signin & signup)-->
	<script src="js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- Large modal -->
	<!-- <script>
		$('#').modal('show');
	</script> -->
	<!-- //popup modal (for signin & signup)-->

	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		paypalm.minicartk.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

		paypalm.minicartk.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});
	</script>
	<!-- //cart-js -->

	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->

	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->

	<!-- imagezoom -->
	<script src="js/imagezoom.js"></script>
	<!-- //imagezoom -->

	<!-- FlexSlider -->
	<script src="js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->

	<!-- flexisel (for special offers) -->
	<script src="js/jquery.flexisel.js"></script>
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 3,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 2
					}
				}
			});

		});
	</script>
	<!-- //flexisel (for special offers) -->

	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->

</body>
</html>