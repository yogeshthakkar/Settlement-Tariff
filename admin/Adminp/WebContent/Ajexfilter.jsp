<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


		<%out.println("<div class=\"container\">");
			out.println("<div id=\"tops\" class=\"agileinfo-ads-display col-md-9\" ><div class=\"wrapper\"><!-- first section (nuts) --><div class=\"product-sec1\"><h3 class=\"heading-tittle\">House</h3><br><br><br>");
					int id=Integer.parseInt(request.getParameter("c_id"));
						Connection con=null;
						try{
							Class.forName("com.mysql.jdbc.Driver");
							String url="jdbc:mysql://localhost:3306/test";
							con=DriverManager.getConnection(url,"root","root");	
						String query="SELECT * FROM postproperty where areaid="+id;
						PreparedStatement p=con.prepareStatement(query);
						ResultSet rs=p.executeQuery();
						while(rs.next()){					
						/* 	out.println("<form method=\"post\" action=\"schoolMoreInfo\"><table>");
						 */	out.println("<div class=\"col-md-4 product-men\">");
							out.println("<div class=\"men-pro-item simpleCart_shelfItem\">");
							out.println("<div class=\"men-thumb-item\">");
							String a=rs.getString("image1");
							String b=rs.getString("category");
							String d=rs.getString("sub_cat");
							int m=rs.getInt("p_id");
							
							System.out.print("img : "  + a +"       ");
						
								out.println("	<img src=\"Files/"+a+"\"   height=\"300\" width=\"250\"  margin=\"10px\"  </img>");
								out.println( "<div class=\"men-cart-pro\">");
								  out.println("<div class=\"inner-men-cart-pro\">");
								  out.println("<a href=\"houseinfo.jsp?id="+ m +"\" class=\"link-product-add-cart\">Quick View</a>");
							out.println("</div>	</div><br>");
					 out.println("<span class=\"product-new-top\" >New");
				out.println("</span></div>"); 
				out.println("<div class=\"item-info-product \"><h4>");
			 			 	out.println("<a href=\"#\">"+b+"</a><a href=\"#\">"+d+"</a>");
			 			 out.println("</h4>"); 
			 			 String c=rs.getString("price"); 
			 			 out.println("<div class=\"info-product-price\">	<span class=\"item_price\"><h4>");
			 			 	out.println("	<label>Price :</label>");
			 			out.println("<a href=\"#\">" +c+ "</a>");
						 out.println("</h4></span>	</div>");
						 if(session.getAttribute("s")==null) 
									{
											out.println("alert(\"Please Log In\");");
								 }
									else{
									out.println("<form name=\"favourite\" method=\"post\" action=\"favouritecon\"><input type=\"hidden\" name=\"u_id\" value="+rs.getInt("userid") + ">");
			 			 	out.println("	<input type=\"hidden\" name=\"p_id\" value="+rs.getInt("p_id")+"><button style=\"font-size:15px;background-color: orange;height: 56px;width: 166px; border-radius=\"25px\" name=\"submit\" value=\"add\">Add to Favourite <i class=\"fa fa-heart-o\"></i></button>");
			 			 	out.println("	<input type=\"hidden\" name=\"userid\" ></form>	");					
									}
										out.println("	</div></div>	</div>");}}catch(Exception e) 
				{e.printStackTrace();}
						out.println("</div></div></div></div><br>");
						%>
						
						