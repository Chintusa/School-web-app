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

@WebServlet("/block_student")
public class BlockStudent extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("s_id"));
		StudentDao dao = new StudentDao();
		Student student = dao.fetchStudentById(id);
		Teacher teacher = student.getTeacher();
		Principal principal = student.getPrincipal();
		
		List<Student> list = new ArrayList<Student>();
		
		String status = student.getStatus();
		
		if (status.equalsIgnoreCase("active")) {
			student.setStatus("inactive");
			student.setPrincipal(principal);
			student.setTeacher(teacher);
			list.add(student);
			principal.setStudents(list);
			teacher.setStudents(list);
		} else {
			student.setStatus("active");
			student.setPrincipal(principal);
			student.setTeacher(teacher);
			list.add(student);
			principal.setStudents(list);
			teacher.setStudents(list);
		}
		if (!list.isEmpty()) {
			dao.saveStudent(student);
			res.sendRedirect("student/view_all_student.jsp");
		}
		
		
	}

}
