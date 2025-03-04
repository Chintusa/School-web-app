package com.org.student_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.StudentDao;

import com.org.dto.Student;
import java.util.List;

@WebServlet("/student_login")
public class LoginStudent  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = req.getParameter("em");
		String password = req.getParameter("pwd");
		StudentDao dao = new StudentDao();
		List<Student> student = dao.fetchStudentByEmailPassword(email, password);
		String status = student.get(0).getStatus();
		HttpSession session = req.getSession();
		
		if (!student.isEmpty()) {
			if(status.equalsIgnoreCase("active")) { 				
				session.setAttribute("success", student.get(0));
				res.sendRedirect("student/student_home.jsp");
			}else {
				res.sendRedirect("block.jsp");
			}

			

		} else {
			session.setAttribute("fail", "Invalid email or password");
			res.sendRedirect("student/student_login.jsp");

		}
	}

}
