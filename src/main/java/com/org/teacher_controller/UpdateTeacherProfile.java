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

import com.org.dao.PrincipalDao;
import com.org.dao.TeacherDao;
import com.org.dto.Principal;
import com.org.dto.Teacher;

@WebServlet("/up_teacher")
public class UpdateTeacherProfile extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		TeacherDao dao = new TeacherDao();

		String name = req.getParameter("nm");
		int age = Integer.parseInt(req.getParameter("age"));		
		long mobile = Long.parseLong(req.getParameter("mb"));
		
		Teacher teacher = dao.fetchTeacherById(Integer.parseInt(req.getParameter("teacher_id")));
       Principal principal = teacher.getPrincipal();
       
		teacher.setName(name);
		teacher.setAge(age);
		teacher.setMobile(mobile);		
		teacher.setPrincipal(principal);

		List<Teacher> teachers = new ArrayList<Teacher>();
		teachers.add(teacher);
		principal.setTeachers(teachers);

		boolean result = dao.saveTeacher(teacher);
		HttpSession session = req.getSession();
		if (result) {

	session.setAttribute("s_update_teacher","successfully Updated");
			res.sendRedirect("teacher/view_teacher.jsp");

		} else {
	session.setAttribute("f_update_teacher", "Error While Updating ");
			res.sendRedirect("teacher/view_teacher.jsp");

		}

	}

}
