package com.org.student_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.StudentDao;
import com.org.dao.TeacherDao;
import com.org.dto.Principal;
import com.org.dto.Student;
import com.org.dto.Teacher;


@WebServlet("/register_student")
public class RegisterStudent extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("nm");
		int age = Integer.parseInt(req.getParameter("age"));
		long mobile = Long.parseLong(req.getParameter("mb"));
		String course = req.getParameter("course");
		String address =req.getParameter("address");
		String status = req.getParameter("status");
		String marks = req.getParameter("marks");
		String email = req.getParameter("em");
		String password = req.getParameter("pwd");
		
		Student student=new  Student();
		student.setName(name);
		student.setAge(age);
		student.setMobile(mobile);
		student.setCourse(course);
		student.setAddress(address);
		student.setStatus(status);
		student.setMarks(marks);
		student.setEmail(email);
		student.setPassword(password);
		 int t_id=Integer.parseInt(req.getParameter("t_id"));
		 StudentDao dao = new StudentDao();
			
		 Teacher teacher =new TeacherDao().fetchTeacherById(t_id);
		 		 Principal principal = teacher.getPrincipal();
		 		 student.setPrincipal(principal);
				 student.setTeacher(teacher);
		 student.setCourse(teacher.getSubject());
		 List<Student> students=new ArrayList<Student>();
		 
		 students.add(student);
		 teacher.setStudents(students);
		 principal.setStudents(students);	
		boolean result = dao.saveStudent(student);
		

		
	
//		HttpSession session=req.getSession();
		if(result) {
			
//			session.setAttribute("success",t_id);
			res.sendRedirect("student/student_register.jsp");
			
		}
		else {
//			session.setAttribute("fail", "Data Already Exist");
			res.sendRedirect("student/student_register.jsp");
//	    
		}
	}

}
