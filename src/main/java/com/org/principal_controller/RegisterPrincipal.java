package com.org.principal_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.PrincipalDao;
import com.org.dao.SchoolDao;
import com.org.dto.Principal;
import com.org.dto.School;
@WebServlet("/register_principal")
public class RegisterPrincipal extends HttpServlet {
	Principal principal =null;
	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	String name=req.getParameter("nm");
	int age=Integer.parseInt(req.getParameter("age"));
	long mobile= Long.parseLong(req.getParameter("mb"));
	String qualification=req.getParameter("qf");
	String email=req.getParameter("em");
	String password=req.getParameter("pwd");
	
	int school_id=Integer.parseInt(req.getParameter("school_id"));
	School school = new SchoolDao().fetchSchoolById(school_id);
	
	 principal = new Principal();
	principal.setName(name);
	principal.setAge(age);
	principal.setMobile(mobile);
	principal.setQualification(qualification);
	principal.setEmail(email);
	principal.setPassword(password);
	school.setPrincipal(principal);
	principal.setSchool(school);
	 boolean result = new PrincipalDao().savePrincipal(principal);
	
//	 HttpSession session=req.getSession();
	 
	
	if(result) {
//		session.setAttribute("success","successfully Registered");
		res.sendRedirect("school/school_home.jsp");
       
	}
	else {
//		session.setAttribute("fail", "Data Already Exist");
		res.sendRedirect("school/school_home.jsp");
    
	}
}
}
