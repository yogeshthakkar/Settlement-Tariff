<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String search=request.getParameter("val");
	//out.println("Email : "+email);
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/quickgym","root","pooja@1998");
		String sql="select  * from gymowner where city like  '"+  search  +"%'  or area like  '"+  search  +"%' ;";
		PreparedStatement pst=conn.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			out.println(rs.getString("gym_name"));
			//out.println("<font color='red'>rs.getString('gym_name')</font>");
		}
		else
		{
			out.println("<font color='green'>Approved</font>");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>