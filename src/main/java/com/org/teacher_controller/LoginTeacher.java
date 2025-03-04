package com.org.teacher_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.org.dao.TeacherDao;

import com.org.dto.Teacher;

@WebServlet("/login_teacher")
public class LoginTeacher extends HttpServlet{
	private TeacherDao dao=null;
	private List<Teacher> teacher=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = req.getParameter("em");
		String password = req.getParameter("pwd");
		dao=new TeacherDao();
		teacher = dao.fetchTeacherByEmailPassword(email, password);
		
		HttpSession session = req.getSession();
		if (!teacher.isEmpty()) {

			session.setAttribute("success", teacher.get(0));
			res.sendRedirect("teacher/teacher_home.jsp");

		} else {
			session.setAttribute("fail", "Invalid email or password");
			res.sendRedirect("teacher/teacher_login.jsp");

		}
	}

	
	

}
