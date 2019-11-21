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
import com.bean.addstate;
import com.dao.Addcategorydata;
import com.dao.Addcity;
import com.dao.Addstate;
import com.dao.FileUploadDao;

@WebServlet("/statecon")
@MultipartConfig
public class statecon extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request,response);
	}
	
protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	addstate add=new addstate();

	
	add.setS_name(request.getParameter("s_name"));
		int status=Addstate.insertstate(add);
		
	if(status>0){

			response.sendRedirect("manage-state.jsp");
		}
	else{

			request.getRequestDispatcher("add-state.jsp").forward(request,response);
		
}
	
}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("s_id"));
		int status=Addstate.deletestate(id);
		if(status>0){
			response.sendRedirect("manage-state.jsp");
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("s_id"));
		System.out.println(id);
		addstate s=Addstate.getstateById(id);
		//System.out.println(stu.getp_name());
		if(s!=null){
			request.setAttribute("s",s);
			request.getRequestDispatcher("edit-state.jsp").forward(request,response);
		}else{
			response.sendRedirect("manage-state.jsp");
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		addstate stu=new addstate();
		System.out.println(request.getParameter("s_id"));
		int id=Integer.parseInt(request.getParameter("s_id"));
		
		stu.setS_id(id);
		stu.setS_name(request.getParameter("s_name"));
		int status=Addstate.updatestate(stu);
		if(status>0){
		//	request.getRequestDispatcher("manage-package.jsp").forward(request,response);
			response.sendRedirect("manage-state.jsp");
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
