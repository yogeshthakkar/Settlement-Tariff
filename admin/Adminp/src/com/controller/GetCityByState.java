package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.addcity;
import com.dao.Addcity;

/**
 * Servlet implementation class GetCityByState
 */
@WebServlet("/GetCityByState")
public class GetCityByState extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCityByState() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         //   out.print(Integer.parseInt(request.getParameter("sd")));
            List<addcity> product = Addcity.getCityByState(Integer.parseInt(request.getParameter("sd")));

            String resp = "";
            for (addcity subcat : product) {
                resp += subcat.getC_id()+ ":" + subcat.getC_name() + ",";
            }
     //                System.out.println(resp);
            out.print(resp);
        }
    }

    
    
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
