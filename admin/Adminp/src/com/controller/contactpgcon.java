package com.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Student;
import com.dao.StudentDao;

@WebServlet("/contactpgcon")
public class contactpgcon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public contactpgcon() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("submit");

		 /*if(action.equalsIgnoreCase("Login"))
		{
			Student s=new Student();
			s.setEmail(request.getParameter("Email"));
			s.setPassword(request.getParameter("Password"));
			s.setU_type(request.getParameter("u_type"));;
			System.out.println(s.getEmail());
			System.out.println(s.getPassword());
			System.out.println(s.getU_type());
							
			StudentDao sdao=new StudentDao();
			Student  s1=sdao.checkLogin(s);
			
			if(s1==null)
			{
				System.out.println("Incorrect");
				System.out.println("Your User Name Or Password Is Incorrect");
				request.getRequestDispatcher("header.jsp").forward(request, response);
			}
			else
			{
				HttpSession session=request.getSession();
				session.setAttribute("s", s1);
				
				System.out.println("login successful :"+ s.getU_type());
				if(s.getU_type().equalsIgnoreCase("admin"))
				{
					System.out.println("Admin login successful");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else
				{
					request.getRequestDispatcher("index1.jsp").forward(request, response);
						
				}
		
			}
			}
		 */if(action.equalsIgnoreCase("contact"))
			{
			int phone=Integer.parseInt(request.getParameter("phone"));	
			
			String emailid=request.getParameter("email");
				
				Student f=new Student();
				//String email=f.getEmail();
				System.out.println("Mail Send On: "+emailid);
				
				StudentDao dao=new StudentDao();
				f=dao.checkEmail(emailid);
				if(f==null)
				{
					request.setAttribute("invalidemail", "Email Address Not Valid");
					request.getRequestDispatcher("house.jsp").forward(request, response);
				}
				else
				{
					
			/*		String emailid=f.getEmail();
			*/		String username=f.getF_name();
					final String Senderid = "settlementtariff@gmail.com";
					final String password = "settlement@123";

					Properties props = new Properties();
					props.put("mail.smtp.auth", "true");
					props.put("mail.smtp.starttls.enable", "true");
					props.put("mail.smtp.host", "smtp.gmail.com");
					props.put("mail.smtp.port", "587");

					Session session = Session.getInstance(props, new Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(Senderid, password);
						}
					});

/*					}; 
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(Senderid, password);
						}
					});
*/
					try {
/*						Random rand = new Random();
						int otp = rand.nextInt(900000) + 100000;
*/		/*			int phone=Integer.parseInt(request.getParameter("phone"));	
			*/			System.out.println("phone no:"+phone);
						Message message = new MimeMessage(session);
						message.setFrom(new InternetAddress(Senderid));
						message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailid));// to
																										// mail
																										// address.
						message.setSubject("Owner Number ");
						String msg1 = "<!DOCTYPE html><html><head></head><body><center><div style='background-color:#f8f8f8; width:500px; height:200px'><div style='background-color:#00e58b; width:500px; height:50px'><h3 style='color:white; padding-top:10px;'>SettlementTariff.com </h3></div><b><p style='color:gray; margin-left:-300px;'>Dear "
								+ username + ",</p><br><p style='color:gray; margin-top:-10px;'>" + phone
								+ "  is Owner Phone number.Do NOT share this phone number with anyone for security reasons.For more information stay with touch of Owner.</b></p><div></center></body></html>";
						message.setContent(msg1, "text/html; charset=utf-8");
				
						Transport.send(message);
						System.out.println("Successfully send");

				/*		HttpSession otpsession = request.getSession();
						otpsession.setAttribute("otp", phone);
						otpsession.setMaxInactiveInterval(10 * 60);// Session Set for 10 minutes
						otpsession.setAttribute("UserData", f);*/
						System.out.println("successfull");
						response.sendRedirect("feedback.jsp");

					} catch (Exception e) {
						request.setAttribute("SendOtpError", "Otp Not Send");
						request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
						e.printStackTrace();
					}
				}
				
			}

	}

}
