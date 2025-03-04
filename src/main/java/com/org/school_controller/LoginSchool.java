package com.org.school_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.SchoolDao;
import com.org.dto.School;

@WebServlet("/login_school")
public class LoginSchool extends HttpServlet {

	private List<School> school = null;
	private SchoolDao dao = null;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String email = req.getParameter("em");
		String password = req.getParameter("pwd");
		dao = new SchoolDao();
		school = dao.fetchSchoolByEmailPassword(email, password);
		HttpSession session = req.getSession();
		if (!school.isEmpty()) {

			session.setAttribute("success", school.get(0));
			res.sendRedirect("school/school_home.jsp");

		} else {
			session.setAttribute("fail", "Invalid email or password");
			res.sendRedirect("school/school_login.jsp");

		}

	}

}
