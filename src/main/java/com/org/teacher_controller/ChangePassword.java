package com.org.teacher_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.dao.TeacherDao;
import com.org.dto.Teacher;

@WebServlet("/reset_teacher_pwd")
public class ChangePassword  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		TeacherDao dao = new TeacherDao();
		String password=req.getParameter("pwd1");
		String password1=req.getParameter("pwd2");
		
		int id=Integer.parseInt(req.getParameter("t_id"));
		
		Teacher teacher = dao.fetchTeacherById(id);
		if(password.equals(password1)) {
			
		teacher.setPassword(password1);
		boolean b = dao.saveTeacher(teacher);
		if(b)
		{
			res.sendRedirect("teacher/teacher_home.jsp");
		}
		}
		
	}

}
