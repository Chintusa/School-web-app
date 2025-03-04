package com.org.teacher_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.PrincipalDao;
import com.org.dao.TeacherDao;
import com.org.dto.Principal;
import com.org.dto.Teacher;

@WebServlet("/register_teacher")
public class RegisterTeacher  extends HttpServlet{
	private TeacherDao dao = null;
	private Teacher teacher=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("nm");
		int age = Integer.parseInt(req.getParameter("age"));
		String subject = req.getParameter("subject");
		long mobile = Long.parseLong(req.getParameter("mb"));
		double salary = Double.parseDouble(req.getParameter("salary"));
		String status = req.getParameter("status");
		String email = req.getParameter("em");
		String password = req.getParameter("pwd");
		teacher=new Teacher();
		
		teacher.setName(name);
		teacher.setAge(age);
		teacher.setSubject(subject);
		teacher.setMobile(mobile);
		teacher.setSalaries(salary);
		teacher.setStatus(status);
		teacher.setEmail(email);
		teacher.setPassword(password);
		
		int p_id=Integer.parseInt(req.getParameter("p_id"));
		Principal principal = new PrincipalDao().fetchPrincipalById(p_id);
		teacher.setPrincipal(principal);
		
		List<Teacher> teachers = new ArrayList<Teacher>();
		teachers.add(teacher);
		principal.setTeachers(teachers);
		
		dao=new TeacherDao();
		boolean result = dao.saveTeacher(teacher);
		HttpSession session=req.getSession();
		if(result) {
			
//			session.setAttribute("success","successfully Registered");
			res.sendRedirect("teacher/teacher_register.jsp");
			
		}
		else {
//			session.setAttribute("fail", "Data Already Exist");
			res.sendRedirect("teacher/teacher_register.jsp");
	    
		}
		
	}

}
