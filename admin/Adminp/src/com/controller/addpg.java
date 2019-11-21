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
import com.dao.FileUploadDao;
import com.dao.pacakgedao;
import com.dao.pgdao;

@WebServlet("/addpg")
@MultipartConfig
public class addpg extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request,response);
	}
	
protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	pgdetails add=new pgdetails();
	add.setName(request.getParameter("name"));
	
	add.setCategory(request.getParameter("category"));
	add.setSub_cat(request.getParameter("sub_cat"));
	add.setAddress(request.getParameter("address"));
	add.setArea(request.getParameter("a"));
	add.setCity(request.getParameter("c"));
	
	add.setState(request.getParameter("state"));
	
	String str[] = request.getParameterValues("ser");
	String ser="";
	for(int i=0;i<=str.length-1;i++){
		ser+=str[i]+",";
	}
	add.setPrice(Integer.parseInt(request.getParameter("price")));
	add.setFacilities(ser);
	add.setPhone(request.getParameter("phone"));
	
//	String savePath = "D:\\MYD\\admin\\Adminp\\WebContent\\Image\\"+add.getName();
//    File fileSaveDir=new File(savePath);
//    if(!fileSaveDir.exists()){
//        fileSaveDir.mkdir();
//    }
//    System.out.println(savePath);
	
		Part file = request.getPart("myphoto1");
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
	    Part file4 = request.getPart("image4");
	 	String fileName4=request.getRealPath("/")+"\\Files\\"+file4.getSubmittedFileName();
	    file4.write(fileName4);
	    System.out.println(file4.getSubmittedFileName());
	    add.setImage4(file4.getSubmittedFileName());
	    
//	    add.setImage1(file.getSubmittedFileName());
//	    add.setImage2(file2.getSubmittedFileName());
//	    add.setImage3(file3.getSubmittedFileName());
//	    add.setImage4(file4.getSubmittedFileName());
	
	    
		int status=pgdao.insertpg(add);
		
	if(status>0){

			response.sendRedirect("manage-product.jsp");
		}
	else{

			request.getRequestDispatcher("add-product.jsp").forward(request,response);
		
}
	
}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("p_id"));
		//System.out.println(id);
		int status=pgdao.deletepg(id);
		if(status>0){
			response.sendRedirect("manage-product.jsp");
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("p_id"));
		System.out.println(id);
		pgdetails s=pgdao.getpgById(id);
		//System.out.println(stu.getp_name());
		if(s!=null){
			request.setAttribute("s",s);
			request.getRequestDispatcher("edit-product.jsp").forward(request,response);
		}else{
			response.sendRedirect("Welcome.jsp");
		}
	}
	
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		pgdetails pg=new pgdetails();
		System.out.println(request.getParameter("p_id"));
		int id=Integer.parseInt(request.getParameter("p_id"));
		
		pg.setP_id(id);
		pg.setName(request.getParameter("name"));
		pg.setCategory(request.getParameter("category"));
		pg.setSub_cat(request.getParameter("sub_cat"));
		pg.setAddress(request.getParameter("address"));
		pg.setAreaId(Integer.parseInt(request.getParameter("areaid")));
		pg.setCityid(Integer.parseInt(request.getParameter("cityid")));
		pg.setStateid(Integer.parseInt(request.getParameter("stateid")));
		
		
		pg.setImage1(request.getParameter("image1"));
		pg.setImage2(request.getParameter("image2"));
		pg.setImage3(request.getParameter("image3"));
		pg.setImage4(request.getParameter("image4"));
	
		
		pg.setPrice(Integer.parseInt(request.getParameter("price")));
		String str[] = request.getParameterValues("ser");
		String ser="";
		for(int i=0;i<=str.length-1;i++){
			ser+=str[i]+",";
		}
		
		pg.setFacilities(ser);
		pg.setPhone(request.getParameter("phone"));
		int status=pgdao.updatepg(pg);
		System.out.println(pg.getAddress());
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
		if(status>0){
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
