package com.controller;


import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import javax.servlet.http.Part;

import com.bean.Addcategory;
import com.bean.FileUpload;
import com.bean.addcity;
import com.dao.Addcategorydata;
import com.dao.Addcity;
import com.dao.FileUploadDao;

@WebServlet("/citycon")
@MultipartConfig
public class citycon extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request,response);
	}
	
protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	addcity add=new addcity();

	add.setC_name(request.getParameter("c_name"));
	
	add.setS_name(request.getParameter("s_name"));
		int status=Addcity.insertcity(add);
		
	if(status>0){
			response.sendRedirect("manage-city.jsp");
		}
	else{
			request.getRequestDispatcher("add-city.jsp").forward(request,response);
}
	
}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("c_id"));
		int status=Addcity.deletecity(id);
		if(status>0){
			response.sendRedirect("manage-city.jsp");
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("c_id"));
		System.out.println(id);
		addcity s=Addcity.getcityById(id);
		//System.out.println(stu.getp_name());
		if(s!=null){
			request.setAttribute("s",s);
			request.getRequestDispatcher("edit-city.jsp").forward(request,response);
		}else{
			response.sendRedirect("manage-city.jsp");
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		addcity stu=new addcity();
		System.out.println(request.getParameter("c_id"));
		int id=Integer.parseInt(request.getParameter("c_id"));
		
		stu.setC_id(id);
		stu.setC_name(request.getParameter("c_name"));
		stu.setS_name(request.getParameter("s_name"));
		int status=Addcity.updatecity(stu);
		if(status>0){
		//	request.getRequestDispatcher("manage-package.jsp").forward(request,response);
			response.sendRedirect("manage-city.jsp");
		}else{
			response.sendRedirect("Welcome.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("submit");
		if(action.equalsIgnoreCase("add")){
			insert(request,response);
		}else if(action.equalsIgnoreCase("show All Record")){
			response.sendRedirect("Welcome.jsp");
		}else if(action.equalsIgnoreCase("insert New Record")){
			response.sendRedirect("index.jsp");
		}else if(action.equalsIgnoreCase("delete")){
			delete(request,response);
		}else if(action.equalsIgnoreCase("edit")){
			edit(request,response);
		}else if(action.equalsIgnoreCase("update")){
			update(request,response);
		}
	}

	private String extractfilename(Part file) {
	    String cd = file.getHeader("content-disposition");
	    String[] items = cd.split(";");
	    for (String string : items) {
	        if (string.trim().startsWith("filename")) {
	            return string.substring(string.indexOf("=") + 2, string.length()-1);
	        }
	    }
	    return "";
	}	
}
