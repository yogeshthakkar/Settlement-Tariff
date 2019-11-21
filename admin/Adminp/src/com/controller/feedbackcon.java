package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Addcategory;
import com.bean.addfeedback;
import com.dao.Addcategorydata;
import com.dao.Addfeedback;

@WebServlet("/feedbackcon")
public class feedbackcon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public feedbackcon() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		addfeedback add=new addfeedback();
		add.setU_id(Integer.parseInt(request.getParameter("u_id")));
		add.setEmail(request.getParameter("email"));
		
		add.setComment(request.getParameter("feedback"));
			int status=Addfeedback.insertfeedback(add);
			
		if(status>0){

				response.sendRedirect("index1.jsp");
			}
		else{

				request.getRequestDispatcher("feedback.jsp").forward(request,response);
			
	}
		
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("fid"));
		System.out.println("id:"+id);
		int status=Addfeedback.deletefeedback(id);
		if(status>0){
			response.sendRedirect("feedback-management.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("add");
		if(action.equalsIgnoreCase("submit")){
			insert(request,response);
		}else if(action.equalsIgnoreCase("show All Record")){
			response.sendRedirect("Welcome.jsp");
		}/*else if(action.equalsIgnoreCase("insert New Record")){
			response.sendRedirect("index.jsp");
		}*/else if(action.equalsIgnoreCase("delete")){
			delete(request,response);
		}/*else if(action.equalsIgnoreCase("edit")){
			edit(request,response);
		}else if(action.equalsIgnoreCase("update")){
			update(request,response);
		}
	*/
	}

}
