/*package com.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import javax.mail.Part;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part
//import org.apache.tomcat.util.http.fileupload.ProgressListener;

import com.bean.FileUpload;
import com.bean.admin;
import com.dao.FileUploadDao;
import com.dao.adminDao;



@WebServlet("/ActionController")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB
public class ActionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String URI="";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String action=request.getParameter("submit");
		
		String savePath = "C:\\Users\\Lenovo\\JobDestiny\\JobDestiny\\WebContent\\resume";
        File fileSaveDir=new File(savePath);
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdir();
        }
		
	javax.servlet.http.Part file = request.getPart("fileselect");
		
		 	String fileName=extractfilename(file);
		 			file.write(savePath + File.separator + fileName);
		    String filePath= savePath + File.separator + fileName ;
	    
		    FileUploadDao fdao = new FileUploadDao();
		    FileUpload f = new FileUpload();
		    f.setFile_name(savePath);
		    f.setId(Integer.parseInt(request.getParameter("uid")));
		    fdao.UploadFile(f);
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
					request.getRequestDispatcher("login.jsp").forward(request, response);
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
 
    private void closeQuietly(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
        }
    }
}

*/