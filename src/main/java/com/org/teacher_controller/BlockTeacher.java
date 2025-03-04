package com.org.teacher_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.org.dao.TeacherDao;
import com.org.dto.Principal;
import com.org.dto.Student;
import com.org.dto.Teacher;

@WebServlet("/block_teacher")
public class BlockTeacher extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("t_id"));
		TeacherDao dao = new TeacherDao();
		Teacher teacher =dao.fetchTeacherById(id);
		
		Principal principal = teacher.getPrincipal();
		List<Student> students = teacher.getStudents();
		List<Teacher> list = new ArrayList<Teacher>();

		String status = teacher.getStatus();
		
		if (status.equalsIgnoreCase("active")) {
			teacher.setStatus("inactive");
			teacher.setPrincipal(principal);
			teacher.setStudents(students);
			list.add(teacher);
			principal.setTeachers(list);
			
		} else {
			teacher.setStatus("active");
			teacher.setPrincipal(principal);
			teacher.setStudents(students);
			list.add(teacher);
			principal.setTeachers(list);
		}
		if(teacher!=null) {
			dao.saveTeacher(teacher);
			res.sendRedirect("teacher/view_all_teacher.jsp");
			
		}
	
		
		
		
	}

}
