package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.propertybean;
import com.dao.searchdao;

@WebServlet("/searchcon")
public class searchcon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public searchcon() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String action=request.getParameter("submit");
		if(action.equalsIgnoreCase("search"))
		{
			String s=request.getParameter("search");
			searchdao dao=new searchdao();
			List<propertybean> sa= searchdao.search(s);
			
		if(sa==null)
			{
					System.out.println("Error");
			}
			else
			{
					response.sendRedirect("PG.jsp");
					System.out.println("Successfull");
			}
			}
		}
		
	

}
