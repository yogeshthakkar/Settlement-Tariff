<%@page import="com.bean.Student"%>
<%@page import="com.dao.GalleryDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.bean.Gallery"%>
<%@page import="java.util.List"%>
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
if(session.getAttribute("s")!=null)
{
List<Gallery> gallary=(List)request.getAttribute("gallary");
Iterator<Gallery> itr=gallary.iterator();
Student stu=null;
stu=(Student)session.getAttribute("s");
int uid=stu.getU_id();
Gallery g=null;;
while(itr.hasNext()){
	g=itr.next();
	g.setUid(uid);
	GalleryDao.Add(g);
}
}
request.getRequestDispatcher("postProperty.jsp").forward(request, response);
%>
</body>
</html>