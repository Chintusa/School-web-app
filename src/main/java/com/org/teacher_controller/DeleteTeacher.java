//package com.org.teacher_controller;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//
//import com.org.dao.TeacherDao;
//import com.org.dto.Principal;
//import com.org.dto.Teacher;
//
//@WebServlet("/delete_teacher")
//public class DeleteTeacher extends HttpServlet{
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//		int id=Integer.parseInt(req.getParameter("t_id"));
//		TeacherDao dao = new TeacherDao();
//		Teacher teacher = dao.fetchTeacherById(id);
//		boolean result = dao.deleteTeacher(teacher);
//	
//		if(result) {
//			res.sendRedirect("teacher/view_all_teacher.jsp");
//			
//			
//		}
//		
//	}
//
//}
