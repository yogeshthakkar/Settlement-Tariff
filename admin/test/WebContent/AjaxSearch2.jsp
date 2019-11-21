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
<title>Insert title here</title>
</head>
<body>
<%
	String fname=request.getParameter("val");
	//out.println("Email : "+email);
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ks","root","");
		String sql="select * from student where sname like '"+fname+"%'";
		PreparedStatement pst=conn.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		out.println("<table border='1'><tr><td>ID</td><td>FNAME</td><td>LNAME</td><td>EMAIL</td><td>MOBILE</td><td>PASSWORD</td></tr>");
		while(rs.next())
		{
			out.println("<tr><td>"+rs.getString("id")+"</td><td>"+rs.getString("fname")+"</td><td>"+rs.getString("lname")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("mobile")+"</td><td>"+rs.getString("password")+"</td></tr>");
		}
		out.println("</table>");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>