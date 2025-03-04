package com.org.school_controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.org.dao.SchoolDao;
import com.org.dto.School;



@WebServlet("/register_school")
public class RegisterSchool extends HttpServlet{
	
	private School school=null;
	private SchoolDao dao=null;
	
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("nm");
		String email = req.getParameter("em");
		String password = req.getParameter("pwd");
		String address = req.getParameter("add");
		
		 school = new School();
		school.setName(name);
		school.setEmail(email);
		school.setPassword(password);
		school.setAddress(address);
		 dao = new SchoolDao();
		 boolean result = dao.saveSchool(school);
		
		 HttpSession session=req.getSession();
	
		if(result) {
			session.setAttribute("success","successfully Registered");
			res.sendRedirect("school/school_login.jsp");
	       
		}
		else {
			session.setAttribute("fail", "Data Already Exist");
			res.sendRedirect("school/school_register.jsp");
	    
		}

	}
			
}
