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

import com.org.dao.TeacherDao;
import com.org.dto.Principal;
import com.org.dto.Student;
import com.org.dto.Teacher;

@WebServlet("/update_teacher")
public class UpdateTeacherByPrincipal extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		TeacherDao dao = new TeacherDao();
		int id=Integer.parseInt(req.getParameter("t_id"));
		Teacher teacher = dao.fetchTeacherById(id);
		Principal principal = teacher.getPrincipal();
		List<Student> students = teacher.getStudents();
		
//		String subject = req.getParameter("subject");
		double salary = Double.parseDouble(req.getParameter("salary"));
		
//		teacher.setSubject(subject);
		teacher.setSalaries(salary);
		teacher.setPrincipal(principal);
		
		List<Teacher> teachers = new ArrayList<Teacher>();
		teachers.add(teacher);
		principal.setTeachers(teachers);
		
//		for (Student student : students) {
//			student.setCourse(teacher.getSubject());
//			
//		}
		teacher.setStudents(students);
		
		boolean result = dao.saveTeacher(teacher);
		
		if(result) {
			

			res.sendRedirect("teacher/view_all_teacher.jsp");
			
		}
		else {
			res.sendRedirect("teacher/view_all_teacher.jsp");
	    
		}
		
		
		
	}

}
