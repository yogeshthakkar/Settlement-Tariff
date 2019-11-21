package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.addarea;
import com.bean.favouritebean;
import com.dao.Addarea;
import com.dao.favouritedao;

@WebServlet("/favouritepgcon")
public class favouritepgcon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public favouritepgcon() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	favouritebean add=new favouritebean();
    	add.setU_id(Integer.parseInt(request.getParameter("u_id")));
    	add.setP_id(Integer.parseInt(request.getParameter("p_id")));
    	
    		int status=favouritedao.insertarea(add);
    		System.out.println(status);
    	if(status>0){
    			response.sendRedirect("favourite.jsp");
    		}
    	else{
    			request.getRequestDispatcher("house.jsp").forward(request,response);
    }
    	
    }
    	
    	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    		int id=Integer.parseInt(request.getParameter("f_id"));
    		int status=favouritedao.deletefavourite(id);
    		if(status>0){
    			response.sendRedirect("favourite.jsp");
    		}
    	}
    	
    	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		int id=Integer.parseInt(request.getParameter("f_id"));
    		System.out.println(id);
    		addarea s=Addarea.getareaById(id);
    		//System.out.println(stu.getp_name());
    		if(s!=null){
    			request.setAttribute("s",s);
    			request.getRequestDispatcher("favourite.jsp").forward(request,response);
    		}else{
    			response.sendRedirect("house.jsp");
    		}
    	}
    	
    	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		addarea stu=new addarea();
    		System.out.println(request.getParameter("a_id"));
    		int id=Integer.parseInt(request.getParameter("a_id"));
    		
    		stu.setA_id(id);
    		stu.setA_name(request.getParameter("a_name"));
    		
    		stu.setC_name(request.getParameter("c_name"));
    		stu.setS_name(request.getParameter("s_name"));
    		int status=Addarea.updatearea(stu);
    		if(status>0){
    		//	request.getRequestDispatcher("manage-package.jsp").forward(request,response);
    			response.sendRedirect("manage-area.jsp");
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}


}
