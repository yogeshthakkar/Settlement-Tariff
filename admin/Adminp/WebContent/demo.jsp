<%@page import="java.io.File"%>
<%@page import="com.bean.pgdetails"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.pgdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<pgdetails> pgs=pgdao.getAllpg();
for(pgdetails pg:pgs){
	String[] images=new File(application.getInitParameter("filepath")+File.separator+pg.getName()).list();
%>
<h1>Name : <%=pg.getName() %>
				</h1><br>
	<%for(String img:images){ %>			
	<img alt="image/<%=pg.getName()%>/<%=img%>" src="Image\<%=pg.getName()%>\<%=img%>">
<%}%> <br><br>
<%}%>
</body>
</html>