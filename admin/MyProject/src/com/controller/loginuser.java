package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Student;
import com.dao.StudentDao;


@WebServlet("/loginuser")
public class loginuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public loginuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String action=request.getParameter("submit");
		if(action.equalsIgnoreCase("Sign Up"))
		{
			Student s=new Student();
			s.setF_name(request.getParameter("FirstName"));
			s.setL_name(request.getParameter("LastName"));
			s.setGender(request.getParameter("Gender"));
			s.setEmail(request.getParameter("Email"));
			s.setPhone(request.getParameter("Phone"));
			s.setPassword(request.getParameter("Password"));
			s.setU_type(request.getParameter("u_type"));
			StudentDao sdao=new StudentDao();
			sdao.insertstudent(s);

			FileInputStream fin = null;

			Properties prop = new Properties();

			try {
				fin = new FileInputStream("D:\\MYD\\admin\\Adminp\\WebContent\\mailConfig.properties");
				prop.load(fin);
			} catch (FileNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 

			final String host = prop.getProperty("host").trim();
			final String user = prop.getProperty("user").trim();
			final String userPassword = prop.getProperty("password").trim();
			final String mail_smtp_auth = prop.getProperty("mail.smtp.auth").trim();
			final String mail_smtp_starttls_enable = prop.getProperty("mail.smtp.starttls.enable").trim();
			final String mail_smtp_port = prop.getProperty("mail.smtp.port").trim();

			// session = request.getSession();
			//String emailId = (String)Session.getAttribute("Email");

			String to = s.getEmail().trim();// change accordingly

			System.out.println("from : " + user);
			System.out.println("emailId : " + to);

			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.auth", mail_smtp_auth);
			props.put("mail.smtp.starttls.enable", mail_smtp_starttls_enable);
			props.put("mail.smtp.port", mail_smtp_port);

			javax.mail.Session mailSession = javax.mail.Session.getDefaultInstance(props,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(user, userPassword);
						}
					});

			// Compose the message
			try {
				MimeMessage message = new MimeMessage(mailSession);
				message.setFrom(new InternetAddress(user));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject("Account has been successfully registered at Settlement Tariff!");
				// message.setText("Your Account has been successfully registered at Herapheri! Dear \"+ userBean.getUserName()+\"  \\\",\\\\r\\\\n\\\" + \\r\\n\" + \r\n"
				// +
				// "				    		\"							\\\"To help protect your account from unauthorized use, Please don not share your password of Herapheri and secret questions. ");

				response.setContentType("text/html");
				// 3) create MimeBodyPart object and set your message text
				BodyPart messageBodyPart1 = new MimeBodyPart();
				messageBodyPart1
						.setText("Your Account has been successfully registered at Settlement Tariff! \n \nDear "
								+ s.getF_name()
								+ ", \n \n      \t        To help protect your account from unauthorized use, Please don not share your password of Settlement Tariff and secret questions. ");

				// 4) create new MimeBodyPart object and set DataHandler
				// object to this object
				MimeBodyPart messageBodyPart2 = new MimeBodyPart();
				String filename = "D:\\MYD\\admin\\Adminp\\WebContent\\images\\1.png";// change
																							// accordingly

				DataSource source = (DataSource) new FileDataSource(new File(filename));
				messageBodyPart2.setDataHandler(new DataHandler((javax.activation.DataSource) source));
				messageBodyPart2.setFileName(filename);

				// 5) create Multipart object and add MimeBodyPart objects
				// to this object
				Multipart multipart = new MimeMultipart();
				multipart.addBodyPart(messageBodyPart1);
				multipart.addBodyPart(messageBodyPart2);

				// 6) set the multiplart object to the message object
				message.setContent(multipart);

				// send the message
				Transport.send(message);

				System.out.println("message sent successfully...");
			}catch(Exception e){
				e.printStackTrace();
			}

			request.getRequestDispatcher("index1.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Login"))
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
				out.println("Your User Name Or Password Is Incorrect");
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
			else if(action.equalsIgnoreCase("check"))
			{
				String email=request.getParameter("email");
				Student f=new Student();
				StudentDao dao=new StudentDao();
				f=dao.checkEmail(email);
				if(f==null)
				{
					request.setAttribute("invalidemail", "Email Address Not Valid");
					request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
				}
				else
				{
					
					String emailid=f.getEmail();
					String username=f.getF_name();
					final String Senderid = "rajeshshah2909@gmail.com";
					final String password = "9426286844";

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
						Random rand = new Random();
						int otp = rand.nextInt(900000) + 100000;
						Message message = new MimeMessage(session);
						message.setFrom(new InternetAddress(Senderid));
						message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailid));// to
																										// mail
																										// address.
						message.setSubject("OTP Request");
						String msg1 = "<!DOCTYPE html><html><head></head><body><center><div style='background-color:#f8f8f8; width:500px; height:200px'><div style='background-color:#00e58b; width:500px; height:50px'><h3 style='color:white; padding-top:10px;'>EmailDemo.com </h3></div><p style='color:gray; margin-left:-300px;'>Dear "
								+ username + ",</p><br><p style='color:gray; margin-top:-10px;'>" + otp
								+ "  is your One Time Password.Do NOT share this code with anyone for security reasons.this is valid for 10 minutes.</p><div></center></body></html>";
						message.setContent(msg1, "text/html; charset=utf-8");
				
						Transport.send(message);

						HttpSession otpsession = request.getSession();
						otpsession.setAttribute("otp", otp);
						otpsession.setMaxInactiveInterval(10 * 60);// Session Set for 10 minutes
						otpsession.setAttribute("UserData", f);
						request.getRequestDispatcher("SendOTP.jsp").forward(request, response);

					} catch (Exception e) {
						request.setAttribute("SendOtpError", "Otp Not Send");
						request.getRequestDispatcher("forgotpassword.jsp").forward(request, response);
						e.printStackTrace();
					}
				}
				
			}
			
			else if(action.equalsIgnoreCase("Verify"))
			{
				HttpSession session=request.getSession(false);
				String G_otp=String.valueOf(session.getAttribute("otp"));
				String E_otp=request.getParameter("EnterOTP");
				
				if(G_otp.equalsIgnoreCase(E_otp))
				{
					request.setAttribute("Otpmatch", "OTP Match");
					request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("notmatch", "OTP Not Match");
					request.getRequestDispatcher("SendOTP.jsp").forward(request, response);
				}
				
				
				
			}
			else if(action.equalsIgnoreCase("Confirm"))
			{
				String pswd=request.getParameter("newpassword");
				Student f=new Student();
				HttpSession session=request.getSession(false);
				f=(Student)session.getAttribute("UserData");
				f.setPassword(pswd);
				f.setU_id(f.getU_id());
				StudentDao dao=new StudentDao();
				int r=dao.resetPassword(f);
				if(r>0)
				{
					response.sendRedirect("index1.jsp");
					System.out.println("Password Recovery Success!");
				}
				else
				{
					System.out.println("Error");
				}				
		
			}
	}
}

		




