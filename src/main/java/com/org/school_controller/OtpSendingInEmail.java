package com.org.school_controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/school_otp")
public class OtpSendingInEmail  extends HttpServlet{
	
	private static String generateOtp() {
		int otp = (int) (Math.random() * 900000) + 100000;
        return Integer.toString(otp);
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Email=req.getParameter("em");
		
		Properties properties = System.getProperties();
		
		properties.setProperty("mail.smtp.host","smtp.gmail.com");
	     properties.setProperty("mail.smtp.port","465");
	     properties.setProperty("mail.smtp.ssl.enable","true");
	     properties.setProperty("mail.smtp.auth","true");
	     
	     Session session = Session.getInstance(properties,new Authenticator() {
	    	 @Override
	    	protected PasswordAuthentication getPasswordAuthentication() {
	    		   return new PasswordAuthentication("jhasketansa63@gmail.com", "fvxa tjdg xhsw vpmb");
	               
	    	}
		});
	     
	     session.setDebug(true);
	     
	     MimeMessage message = new MimeMessage(session);
	     
	     String otp=generateOtp();
	     
	     
	     try {
			message.setFrom("jhasketansa63@gmail.com");
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(Email));
		     message.setSubject("Your otp for Reset Password");
		     message.setText("Your OTP is :"+otp);
		    
		     Transport.send(message);
		     
		  
	            req.setAttribute("otp", Integer.parseInt(otp));
	            req.setAttribute("email",Email);

	           
	            RequestDispatcher rd = req.getRequestDispatcher("school/VerifyOtp.jsp");
	            rd.forward(req, resp);
		     
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
	
	}

	
}
