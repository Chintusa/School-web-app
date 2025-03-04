package com.org.student_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.dao.StudentDao;

import com.org.dto.Principal;
import com.org.dto.Student;
import com.org.dto.Teacher;

@WebServlet("/update_student")
public class UpdateStudentByTeacher extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String marks = req.getParameter("marks");

		StudentDao dao = new StudentDao();
		Student student = dao.fetchStudentById(id);
		Teacher teacher = student.getTeacher();
		Principal principal = student.getPrincipal();

		student.setMarks(marks);
		student.setPrincipal(principal);
		student.setTeacher(teacher);
		
		List<Student> students = new ArrayList<Student>();

		students.add(student);
		teacher.setStudents(students);
		principal.setStudents(students);
		
		boolean result = dao.saveStudent(student);

		if (result) {

			
			res.sendRedirect("student/view_all_student_teacher.jsp");

		} else {

			res.sendRedirect("student/view_all_student_teacher.jsp");
	    
		}
	}

}
