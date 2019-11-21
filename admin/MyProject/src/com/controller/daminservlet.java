package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.admin;
import com.dao.adminDao;


@WebServlet("/login")
public class daminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public daminservlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String action=request.getParameter("submit");
		 if(action.equalsIgnoreCase("login"))
			{
				admin s=new admin();
				s.setEmail(request.getParameter("email"));
				s.setPass(request.getParameter("password"));
				adminDao sdao=new adminDao();
				s=sdao.checkLogin(s);
				if(s==null)
				{
					System.out.println("Incorrect");
					out.println("Your User Name Or Password Is Incorrect");
					request.getRequestDispatcher("add-category.jsp").forward(request, response);
				}
				else
				{
					HttpSession session=request.getSession();
					session.setAttribute("s", s);
					request.getRequestDispatcher("index.jsp").forward(request, response);
					System.out.println("login successful");
				}
			}
   
	}

}
