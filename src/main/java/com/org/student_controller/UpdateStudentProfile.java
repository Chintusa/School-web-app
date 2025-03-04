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

import com.org.dao.PrincipalDao;
import com.org.dao.StudentDao;
import com.org.dao.TeacherDao;
import com.org.dto.Principal;
import com.org.dto.Student;
import com.org.dto.Teacher;

@WebServlet("/up_student")
public class UpdateStudentProfile extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		StudentDao dao = new StudentDao();

		String name = req.getParameter("nm");
		int age = Integer.parseInt(req.getParameter("age"));
		long mobile = Long.parseLong(req.getParameter("mb"));
		String address = req.getParameter("address");

		Student student = dao.fetchStudentById(Integer.parseInt(req.getParameter("s_id")));
		Principal principal = student.getPrincipal();

		student.setName(name);
		student.setAge(age);
		student.setMobile(mobile);
		student.setAddress(address);

		student.setPrincipal(principal);

		List<Student> students = new ArrayList<Student>();
		students.add(student);

		principal.setStudents(students);

		boolean result = dao.saveStudent(student);
//		HttpSession session = req.getSession();
		if (result) {

//	session.setAttribute("s_update_teacher","successfully Updated");
			res.sendRedirect("student/view_student.jsp");

		} else {
//	session.setAttribute("f_update_teacher", "Error While Updating ");
			res.sendRedirect("student/view_student.jsp");

		}

	}

}
