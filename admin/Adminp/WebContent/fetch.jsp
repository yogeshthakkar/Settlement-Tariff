<%@page import="com.util.MySQLConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/"; 
String database = "test"; 
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try{
String str=request.getParameter("name");
//String searchby=request.getParameter("s_by");
String s_data=null;
/* if(searchby.equalsIgnoreCase("1"))
{
	s_data="gymowner";
}
else if(searchby.equalsIgnoreCase("2"))
{
	s_data="dietician";
}
 */connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=MySQLConnection.getConnection().createStatement();
String sql ="select * from pg  where name like '"+str+"%'";
resultSet = statement.executeQuery(sql);
int i=0;
String area=null,name=null,city=null,state=null,qualification=null,experience =null;
int  id=0;

out.print("<h4>");
out.println("<table id=\"mytbl\" class='table table-striped'><tr><th>Name</th><th>Area</th><th>City</th><th>State</th><th>More</th></h4></tr>");
while(resultSet.next()){
 area=resultSet.getString("area");
city=resultSet.getString("city");
state=resultSet.getString("state");
// name=resultSet.getString("gym_name");
id=resultSet.getInt("p_id");
i++;
out.println("<tr><td><font color='#f39c12'><b>"+name+"</td>");
out.println("<td><font color='#f39c12'><b>"+area+"</td>");
out.println("<td><font color='#f39c12'><b>"+city+"</td>");
out.println("<td><font color='#f39c12'><b>"+state+"</td>");
out.println("<td><form action='GymOwnerController' method='post' />");
out.println("<input type='hidden' name='id'  value="+id+ ">");
out.println("<input type='submit' class='btn btn-secondary' name='action' value='more'/></td></form></tr>");
}
out.println("</table>");

/*else if(str.equalsIgnoreCase("2"))
{
	out.println("<h4>");
	out.println("<table class='table table-striped'><tr><th>Name</th><th>qualification</th><th>experience</th><th>Area</th><th>City</th><th>State</th><th>More</th></tr>");
	while(resultSet.next()){
	area=resultSet.getString("area");
	 city=resultSet.getString("city");
	 state=resultSet.getString("state");
	 name=resultSet.getString("fname");
	 experience =resultSet.getString("experience");
	 qualification=resultSet.getString("qualification");
	 id=resultSet.getInt("id");
	i++;
	out.println("<tr><td><font color='#f39c12'><b>"+name+"</td>");
	out.print("<td><font color='#f39c12'><b>"+qualification+"</td>");
	out.print("<td><font color='#f39c12'><b>"+experience+"</td>");
	out.print("<td><font color='#f39c12'><b>"+area+"</td>");
	out.print("<td><font color='#f39c12'><b>"+city+"</td>");
	out.print("<td><font color='#f39c12'><b>" +state+"</td> ");
	out.println("<td><form action='DieticianController' method='post' />");
	out.println("<input type='hidden' name='id'  value="+id+  ">");
	out.println("<input type='submit' class='btn btn-secondary' name='action' value='more'/></td></form></tr>");
	}
	out.println("</table>");
}
 */connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>