package com.controller;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.bean.Gallery;
import com.dao.GalleryDao;

@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private final String UPLOAD_DIRECTORY = "D:\\MYD\\admin\\Adminp\\WebContent\\Gallary";
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in controller");
		Gallery g=null;
		//g.setUid(Integer.parseInt(request.getParameter("uid")));
		List<Gallery> gallary=new ArrayList<Gallery>();
		if(ServletFileUpload.isMultipartContent(request))
		{
		
				System.out.println("in if");
			try
			{
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				
				for(FileItem item : multiparts)
				{
					System.out.println("in for");
					if(!item.isFormField())
					{
						g=new Gallery();
						System.out.println("in if");
						String name = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
						g.setImage1(name);
						System.out.println(g.getImage1());
						gallary.add(g);
						//GalleryDao.Add(g);
					}
				}
				request.setAttribute("message", "File uploaded successfully.");
			}
			catch(Exception ex)
			{
				request.setAttribute("message", "File upload failed due to : " + ex);
			}
		}
		else
		{
			System.out.println("in else");
			request.setAttribute("message", "Sorry this servlet only handles file upload request.");
		}
		request.setAttribute("gallary", gallary);
		System.out.println("out");
		request.getRequestDispatcher("SetImageInGallary.jsp").forward(request, response);
	}

}
