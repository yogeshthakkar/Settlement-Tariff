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
import com.bean.pgdetails;
import com.bean.propertybean;
import com.dao.FileUploadDao;
import com.dao.pacakgedao;
import com.dao.pgdao;
import com.dao.propertydao;

@WebServlet("/propertycon")
@MultipartConfig
public class propertycon extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request,response);
	}
	
protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	propertybean add=new propertybean();
	add.setAddress(request.getParameter("address"));
	add.setState(request.getParameter("state"));
	add.setCity(request.getParameter("city"));
	add.setArea(request.getParameter("area"));
	add.setCategory(request.getParameter("category"));
	add.setSub_cat(request.getParameter("sub_cat"));
	add.setPrice(request.getParameter("price"));
//	String lift=request.getParameter("lift");
	String str[] = request.getParameterValues("ser");
	String ser="";
	for(int i=0;i<=str.length-1;i++){
		ser+=str[i]+",";
	}
	add.setFacility(ser);

	add.setName(request.getParameter("name"));
	add.setPhone(request.getParameter("phone"));
	add.setEmail(request.getParameter("email"));	
	add.setRent(request.getParameter("rent"));	
/*
	if(lift.isEmpty()){
		add.setFacility("no");
	}
*///	String savePath = "D:\\MYD\\admin\\Adminp\\WebContent\\Image\\"+add.getName();
//    File fileSaveDir=new File(savePath);
//    if(!fileSaveDir.exists()){
//        fileSaveDir.mkdir();
//    }
//    System.out.println(savePath);
	
		Part file = request.getPart("image1");
	 	String fileName=request.getRealPath("/")+"\\Files\\"+file.getSubmittedFileName();
	    file.write(fileName);
	    System.out.println(file.getSubmittedFileName());
	    add.setImage1(file.getSubmittedFileName());
	    
	    Part file2 = request.getPart("image2");
	 	String fileName2=request.getRealPath("/")+"\\Files\\"+file2.getSubmittedFileName();
	    file2.write(fileName2);
	    add.setImage2(file2.getSubmittedFileName());
	    
	    Part file3 = request.getPart("image3");
	 	String fileName3=request.getRealPath("/")+"\\Files\\"+file3.getSubmittedFileName();
	    file3.write(fileName3);
	    System.out.println(file3.getSubmittedFileName());
	    add.setImage3(file3.getSubmittedFileName());
	   
//	    add.setImage1(file.getSubmittedFileName());
//	    add.setImage2(file2.getSubmittedFileName());
//	    add.setImage3(file3.getSubmittedFileName());
//	    add.setImage4(file4.getSubmittedFileName());
	
	    
		int status=propertydao.insertproperty(add);
		
	if(status>0){

			response.sendRedirect("index1.jsp");
		}
	else{

			request.getRequestDispatcher("postProperty.jsp").forward(request,response);
		
}
	
}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("p_id"));
		//System.out.println(id);
		int status=propertydao.deleteproperty(id);
		if(status>0){
			response.sendRedirect("index1.jsp");
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("p_id"));
		System.out.println(id);
		propertybean s=propertydao.getpropertyById(id);
		//System.out.println(stu.getp_name());
		if(s!=null){
			request.setAttribute("s",s);
			request.getRequestDispatcher("edit-profile.jsp").forward(request,response);
		}else{
			response.sendRedirect("Welcome.jsp");
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		propertybean pr=new propertybean();
		System.out.println(request.getParameter("p_id"));
		int id=Integer.parseInt(request.getParameter("p_id"));
		
		pr.setP_id(id);
		pr.setAddress(request.getParameter("address"));
		pr.setState(request.getParameter("state"));
		pr.setCity(request.getParameter("city"));
		pr.setArea(request.getParameter("area"));
		pr.setCategory(request.getParameter("category"));
		pr.setSub_cat(request.getParameter("sub_cat"));
		pr.setPrice(request.getParameter("price"));
		pr.setImage1(request.getParameter("image1"));
		pr.setImage2(request.getParameter("image2"));
		pr.setImage3(request.getParameter("image3"));
		String str[] = request.getParameterValues("ser");
		String ser="";
		for(int i=0;i<=str.length-1;i++){
			ser+=str[i]+",";
		}
		
		pr.setFacility(ser);
	
		pr.setName(request.getParameter("name"));
		pr.setPhone(request.getParameter("phone"));
		pr.setEmail(request.getParameter("email"));
		pr.setRent(request.getParameter("rent"));	

		
		
		int status=propertydao.updateproperty(pr);
	/*	System.out.println(pg.getAddress());
		System.out.println(pg.getArea());
		System.out.println(pg.getCategory());
		System.out.println(pg.getCity());
		System.out.println(pg.getFacilities());
		System.out.println(pg.getImage1());
		System.out.println(pg.getImage2());
		System.out.println(pg.getImage3());
		System.out.println(pg.getImage4());
		System.out.println(pg.getP_id());
		System.out.println(pg.getPrice());
		System.out.println(pg.getState());
		System.out.println(pg.getSub_cat());
	*/	if(status>0){
		//	request.getRequestDispatcher("manage-package.jsp").forward(request,response);
			response.sendRedirect("manage-product.jsp");
		}else{
			response.sendRedirect("Welcome.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("submit");
		if(action.equalsIgnoreCase("add")){
			System.out.println("In controller");
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
