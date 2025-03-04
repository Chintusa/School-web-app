package com.org.principal_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.PrincipalDao;

import com.org.dto.Principal;

@WebServlet("/login_principal")
public class LoginPrincipal extends HttpServlet {
	private PrincipalDao dao = null;
	private List<Principal> principal =null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = req.getParameter("em");
		String password = req.getParameter("pwd");
		dao=new PrincipalDao();
		principal = dao.fetchPrincipalByEmailPassword(email, password);
		
		HttpSession session = req.getSession();
		if (!principal.isEmpty()) {

			session.setAttribute("success", principal.get(0));
			res.sendRedirect("principal/principal_home.jsp");

		} else {
			session.setAttribute("fail", "Invalid email or password");
			res.sendRedirect("principal/principal_login.jsp");

		}
	}

}
