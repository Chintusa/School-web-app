//package com.org.school_controller;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.org.dao.PrincipalDao;
//import com.org.dao.SchoolDao;
//import com.org.dao.StudentDao;
//import com.org.dao.TeacherDao;
//import com.org.dto.Principal;
//import com.org.dto.School;
//import com.org.dto.Student;
//import com.org.dto.Teacher;
//
//@WebServlet("/delete_school")
//public class DeleteSchool extends HttpServlet{
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//		int id=Integer.parseInt(req.getParameter("id"));
//		SchoolDao dao = new SchoolDao();
//		School school = dao.fetchSchoolById(id);
//		Principal principal = school.getPrincipal();
//		
//		principal.getStudents().forEach(student->new StudentDao().deleteStudent(student.getId()));
//		principal.getTeachers().forEach(teacher->new TeacherDao().deleteTeacher(teacher.getId()));
//		boolean b=new PrincipalDao().deletePrincipal(principal.getId());
//		 if( b) 
//		 {
//			 dao.deleteSchool(school);
//			 res.sendRedirect("main/index.jsp");
//			 
//			 
//		 }
//		
//		
//		
//	}
//
//}
