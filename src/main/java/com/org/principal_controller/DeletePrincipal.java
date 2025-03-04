//package com.org.principal_controller;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.org.dao.PrincipalDao;
//import com.org.dao.StudentDao;
//
//@WebServlet("/delete_principal")
//public class DeletePrincipal extends HttpServlet{
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//		int id=Integer.parseInt(req.getParameter("p_id"));
//		 ;
//		boolean result = new PrincipalDao().deletePrincipal(id);
//	
//		if(result) {
//			res.sendRedirect("principal/view_principal_school.jsp");
//			
//			
//		}
//		
//	}
//
//}
