package com.org.teacher_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.dao.TeacherDao;
import com.org.dto.Teacher;

@WebServlet("/reset")
public class ResetPasswordTeacher  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email=req.getParameter("email");
		String Password=req.getParameter("pwd");
		
		List<Teacher> teacher = new TeacherDao().fetchTeacherByEmailPassword(email, Password);
		if(!teacher.isEmpty()) {
			res.sendRedirect("teacher/ResetPassword.jsp");
		}
		
	}

}
