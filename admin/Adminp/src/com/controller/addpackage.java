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

import com.bean.Addpackage;
import com.bean.FileUpload;
import com.dao.FileUploadDao;
import com.dao.pacakgedao;

@WebServlet("/addpackage")
@MultipartConfig
public class addpackage extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request,response);
	}
	
protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	Addpackage add=new Addpackage();

	add.setP_name(request.getParameter("p_name"));
	
	add.setP_desc(request.getParameter("p_desc"));

	add.setPrice(Integer.parseInt(request.getParameter("price")));
	add.setDiscount_pri(Integer.parseInt(request.getParameter("discount_pri")));

	
	String savePath = "D:\\MYD\\admin\\Adminp\\WebContent\\Image";
    File fileSaveDir=new File(savePath);
    if(!fileSaveDir.exists()){
        fileSaveDir.mkdir();
    }
	
	/*Part file = request.getPart("myPhoto");
	 	String fileName=extractfilename(file);
	    file.write(savePath + File.separator + fileName);
	    String filePath= savePath + File.separator + fileName ;
*/ 
	Part file = request.getPart("myphoto");
 	String fileName=request.getRealPath("/")+"\\Files\\"+file.getSubmittedFileName();
    file.write(fileName);
    System.out.println(file.getSubmittedFileName());
    add.setImage(file.getSubmittedFileName());

	    add.setImage(savePath);

	
		int status=pacakgedao.insertpacakge(add);
		
	if(status>0){

			response.sendRedirect("manage-package.jsp");
		}
	else{

			request.getRequestDispatcher("add-pacakge.jsp").forward(request,response);
		
}
	
}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("p_id"));
		int status=pacakgedao.deletepacakage(id);
		if(status>0){
			response.sendRedirect("manage-package.jsp");
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("p_id"));
		System.out.println(id);
		Addpackage s=pacakgedao.getStudentById(id);
		//System.out.println(stu.getp_name());
		if(s!=null){
			request.setAttribute("s",s);
			request.getRequestDispatcher("edit-package.jsp").forward(request,response);
		}else{
			response.sendRedirect("Welcome.jsp");
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Addpackage stu=new Addpackage();
		System.out.println(request.getParameter("p_id"));
		int id=Integer.parseInt(request.getParameter("p_id"));
		
		stu.setP_id(id);
		stu.setP_name(request.getParameter("p_name"));
		stu.setP_desc(request.getParameter("p_desc"));
		stu.setPrice(Integer.parseInt(request.getParameter("price")));
		stu.setDiscount_pri(Integer.parseInt(request.getParameter("discount_pri")));
		stu.setImage(request.getParameter("image"));
		int status=pacakgedao.updatepacakge(stu);
		if(status>0){
		//	request.getRequestDispatcher("manage-package.jsp").forward(request,response);
			response.sendRedirect("manage-package.jsp");
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
