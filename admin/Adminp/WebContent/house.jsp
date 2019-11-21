<%@page import="com.bean.Student"%>
<%@page import="com.dao.Addstate"%>
<%@page import="com.bean.addstate"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Property</title>
<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		
		
		
		function SearchItem(id)
		{  
			
				var url="Ajexfilter.jsp?c_id="+id;  
						
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
	<!--//tags -->
	<link href="cssf1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="cssf1/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="cssf1/font-awesome.css" rel="stylesheet">
	<!--pop-up-box-->
	<link href="cssf1/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>
<body>
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
					<li>House</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->

	<sql:setDataSource var="DB" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/test" user="root" password="root" />
		<sql:query var="Recactivity" dataSource="${DB}">
						select * from area
</sql:query>

<!-- product left -->
			<div class="side-bar col-md-3">

				<!-- cuisine -->
				<div class="left-side">
					<h3 class="agileits-sear-head">See Property By Area</h3>
					<ul>	
					<li>
								<%-- <select class="form-control" name="state" id="s" onchange="getcity()" onclick="CheckState(this.value)" style="height: 46px;">
										<option id="s" name="state"> Select State</option>
		
								 <%
												List<addstate> list=Addstate.getAllstate();
													for(addstate a:list)
													{%>
														<option  type="checkbox" id="s" name="state" value="<%=a.getS_id()%>"><%=a.getS_name()%></option>
													<%} %>
													</select>
		 --%>
		
    <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingEight">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
        Area
        </a>
      </h4>
    </div>
    <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
      <div class="panel-body">
         <form>
			<div>
					<div class="checkbox" style="margin-left: 20px;">
				<c:forEach var="row"  items="${Recactivity.rows}">
						<input type="radio"  id="activity${row.a_id}" value="${row.a_name}" name="city" onchange="SearchItem(${row.a_id},'activity');" style="margin-left: 20px;" >${row.a_name}<br>
				</c:forEach>
					</div>
			</div>

			</form>
      </div>
    </div>
  </div>
  
	
 											</li>
		
						
					</ul>
				</div>
				<!-- //Area-->
		<!-- 
		
		City
				<div class="left-side">
					<h3 class="agileits-sear-head">See Property By City</h3>
					<ul>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">South American</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">French</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Greek</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Chinese</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Japanese</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Italian</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Mexican</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Thai</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Indian</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span"> Spanish </span>
						</li>
					</ul>
				</div>
				//City
				
				State
				<div class="left-side">
					<h3 class="agileits-sear-head">See Property By State</h3>
					<ul>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">South American</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">French</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Greek</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Chinese</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Japanese</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Italian</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Mexican</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Thai</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span">Indian</span>
						</li>
						<li>
							<input type="checkbox" class="checked">
							<span class="span"> Spanish </span>
						</li>
					</ul>
				</div>
				//State
		 -->
				</div>
				
			
			<!-- //product left -->
			
	<div class="ads-grid">
		<div class="container">
			<!-- tittle heading -->
		
			<!-- //tittle heading -->
			<!-- product left -->
			
			<!-- //product left -->
			<!-- product right -->
			<div id="tops" class="agileinfo-ads-display col-md-9" >
				<div class="wrapper">
					<!-- first section (nuts) -->
					<div class="product-sec1">
						<h3 class="heading-tittle">House</h3>
						<br><br><br>
						<%
						Connection con=null;
						try{
							Class.forName("com.mysql.jdbc.Driver");
							String url="jdbc:mysql://localhost:3306/test";
							con=DriverManager.getConnection(url,"root","root");	
						String query="SELECT * FROM postproperty";
						PreparedStatement p=con.prepareStatement(query);
						ResultSet rs=p.executeQuery();
						while(rs.next()){						
						%>
						<div   class="col-md-4 product-men">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
								<% String a=rs.getString("image1");%>
								<%String b=rs.getString("category");
								String d=rs.getString("sub_cat");%> 
									 <img src="Files//<%=a%>" height="300" width="250"></img>
									 <div class="men-cart-pro">
									  <div class="inner-men-cart-pro" >
											<a href="houseinfo.jsp?id=<%=rs.getInt("p_id")%>" class="link-product-add-cart">Quick View</a>
										</div>
									</div>
									<br>
									<span class="product-new-top">New</span>
								</div>
								<div class="item-info-product ">
									<h4>
										<a href="#"><%=b%></a>
										<a href="#"><%=d%></a>
									</h4>
									
											<%String c=rs.getString("price"); %>
									
									<div class="info-product-price">
										<span class="item_price">
										<h4>
											<label>Price :</label>
											<a href="#"><%=c%></a>
									</h4>
									</span>
										
									</div>
									<%if(session.getAttribute("s")==null) 
									{%>
											alert("Please Log In");
									<% }
									else{
										Student stu=null;
										stu=(Student)session.getAttribute("s"); %>
									<form name="favourite" method="post" action="favouritecon">
									<input type="hidden" name="u_id" value=<%=stu.getU_id()%>>
										<input type="hidden" name="p_id" value=<%=rs.getInt("p_id")%>>
										<input type="hidden" name="property" value="House">
										<button style="font-size:15px;background-color: orange;height: 56px;width: 166px; border-radius="25px" name="submit" value="add">Add to Favourite 
										<i class="fa fa-heart-o"></i></button>
											<input type="hidden" name="userid" >
											</form>
									
									<%}	%>
										</div>
							</div>
						</div>
						<%}}catch(Exception e) 
						{e.printStackTrace();}
						%>
										<!-- //first section (nuts) -->
					<!-- second section (nuts special) -->

					<!-- //second section (nuts special) -->
				</div>
			</div>
			<!-- //product right -->
		</div>
	</div>
	<!-- //top products -->
<br>
<%@include file="footer.jsp"%>
</body>
</html>