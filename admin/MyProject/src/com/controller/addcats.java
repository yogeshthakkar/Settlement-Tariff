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
import com.dao.Addcategorydata;
import com.dao.FileUploadDao;

@WebServlet("/addcategory")
@MultipartConfig
public class addcats extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request,response);
	}
	
protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	Addcategory add=new Addcategory();

	add.setC_name(request.getParameter("p_name"));
	
	add.setStatus(request.getParameter("p_desc"));
		int status=Addcategorydata.insertcategory(add);
		
	if(status>0){

			response.sendRedirect("manage-category.jsp");
		}
	else{

			request.getRequestDispatcher("add-category.jsp").forward(request,response);
		
}
	
}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("p_id"));
		int status=Addcategorydata.deletecategory(id);
		if(status>0){
			response.sendRedirect("manage-category.jsp");
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("c_id"));
		System.out.println(id);
		Addcategory s=Addcategorydata.getCategoryById(id);
		//System.out.println(stu.getp_name());
		if(s!=null){
			request.setAttribute("s",s);
			request.getRequestDispatcher("edit-category.jsp").forward(request,response);
		}else{
			response.sendRedirect("manage-category.jsp");
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Addcategory stu=new Addcategory();
		System.out.println(request.getParameter("c_id"));
		int id=Integer.parseInt(request.getParameter("c_id"));
		
		stu.setC_id(id);
		stu.setC_name(request.getParameter("c_name"));
		stu.setStatus(request.getParameter("status"));
		int status=Addcategorydata.updatecategory(stu);
		if(status>0){
		//	request.getRequestDispatcher("manage-package.jsp").forward(request,response);
			response.sendRedirect("manage-category.jsp");
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
