<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">



.p_infoRow
{

	font-size:20px;
	color:red;
	margin-top: 10px;
	margin-left: 300px;
	padding:10px;
}

.pic
{

	width:300px;
	height:200px;
}
.btn{
	font-size:30px;
	font-variant:bold;
	background-color:orange;
	height:50px;
	width=:100px;
	align:right;
}





</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.0.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>


</head>
<body>
<%@include file="header.jsp" %>

<table rowspan="2" colspan="4">
	<tr>
	<!-- <td>
	<img src="images/PG/Navrangpura/npg1.jpg" align="center" height="50px" width="50px" class="pic"></img></td>	 -->
</tr>
<tr>
<td>
<div class="propInfoBlock">
<div class="propInfoBlockInn">
<div class="p_infoRow" id="firstFoldDisplay">
<div class="p_infoColumn">
<div class="p_title">
Bedrooms
</div>
<div class="p_value">
<div class="seeBedRoomDimen">
3
<span class="seeBedRoomTitle">
See Dimensions
</span>
</div>
</td>
<td>	
<div class="p_infoColumn">
<div class="p_title">
Bathrooms
</div>

<div class="p_value">3</div>
</div>
</td>
<td>
<div class="p_infoColumn">
<div class="p_title">
Balcony
</div>
<div class="p_value">1</div>
</div>
</td>
<td>
<div class="p_infoColumn">
<div class="p_title">Store Room</div>
<div class="p_value">1</div>
</div>
<div class="clr"></div>
</div>
</td>
</tr>
 <tr>
<td>
<div class="p_infoRow" id="thirdFoldDisplay">
<div class="p_infoColumn">
<div class="p_title">Furnished status</div>
<div class="p_value">Semi-Furnished</div>
</div>
</td>
<td>
<div class="p_infoColumn">
<div class="p_title">Car parking</div>
<div class="p_value">1 Covered</div>
</div>
</td>
<td>
<div class="p_infoColumn">
<div class="p_title">Tenants Preferred</div>
<div class="p_value">Bachelors</div>
</td>
<td>
<div class="p_infoColumn">
<div class="p_title">Water Availability</div>
<div class="p_value">24 Hours Available</div>
</div>
<div class="clr"></div>
</div>
</td>
</tr>
<tr>
<td>
<div class="p_infoRow" id="fourthFoldDisplay">
<div class="p_infoColumn">
<div class="p_title">Floor</div>
<div class="p_value truncated">2&nbsp;(Out of 5 Floors)</div>
</div>
</td>
<td>
<div class="p_infoColumn">
<div class="p_title">Units on Floor</div>
<div class="p_value">4</div>
</div>
</td>
<td>
<div class="p_infoColumn">
<div class="p_title">
Lift
</div>
<div class="p_value">1</div>
</div></td><td>
<div class="p_infoColumn">
<div class="p_title">Facing</div>
<div class="p_value">East</div>
</div>
<div class="clr"></div>
</div></td><tr><td>
<div class="p_infoRow" id="forthfoldAllRegCounterExt">
<div class="p_infoColumn">
<div class="p_title">Overlooking</div>
<div class="p_value">Garden/Park</div>
</div></td><td>
<div class="nDataRow">
<div class="dataLabel">Status of Electricity</div>
<div class="dataVal">No/Rare Powercut</div>
<div class="clearAll"></div>
</div></td>
<br>
	<tr>
	<td>&nbsp;
	<img src="images/PG/Navrangpura/npg1.jpg"  height="150" width="150"></img></td>
	<td>&nbsp;
	<img src="images/PG/Navrangpura/npg2.jpg" height="150" width="150"></img></td>
	<td>&nbsp;
	<img src="images/PG/Navrangpura/npg3.jpg" align="center"  height="150" width="150"></img></td>
	<td>&nbsp;
	<img src="images/PG/Navrangpura/npg4.jpg" align="center"  height="150" width="150"></img></td>

	<td>
	<form>
	<a href="login.jsp"><input type="button" name="buy now" value="Buy now" class="btn"></button></a>
	</form>
	
</td>
</tr>
</table>
<%@include file="footer.jsp" %>

</body>
</html>