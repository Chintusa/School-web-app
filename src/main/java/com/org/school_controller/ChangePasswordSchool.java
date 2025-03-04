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

@WebServlet("/otp_reset_school")
public class ChangePasswordSchool extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int otp = Integer.parseInt(req.getParameter("Entered_otp"));
        String pwd = req.getParameter("pwd");
        String email = req.getParameter("em");
        int generated_otp = Integer.parseInt(req.getParameter("generated_otp"));
        HttpSession session = req.getSession();

        if (otp == generated_otp) {
            List<School> list = new SchoolDao().fetchSchoolByEmail(email);
            if (!list.isEmpty()) {
                list.get(0).setPassword(pwd);
                new SchoolDao().saveSchool(list.get(0));

                session.setAttribute("pwd_updated", "Password updated successfully");
                res.sendRedirect("school_login.jsp");
            } else {
                session.setAttribute("pwd_fail", "Wrong email id");
                res.sendRedirect("school_password_reset.jsp");
            }
        } else {
            session.setAttribute("wrong_otp", "You have entered the wrong OTP");
            res.sendRedirect("school_password_reset.jsp");
        }
    }
}
