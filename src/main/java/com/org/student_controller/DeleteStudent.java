package com.org.student_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.StudentDao;

@WebServlet("/delete")
public class DeleteStudent extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("s_id"));
		StudentDao dao = new StudentDao();
		boolean student = dao.deleteStudent(id);
	
		if(student) {
			res.sendRedirect("student/view_all_student.jsp");
			
			
		}
		
	}

}
