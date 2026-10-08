package com.studentap.serv;

import java.io.IOException;
import java.io.PrintWriter;

import com.StudentApp.Dao.StudentDao;
import com.StudentApp.Dao.StudentDaoimp;
import com.StudentApp.dto.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/forgotpassword")
public class Forgot extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st=new StudentDaoimp();
		String email=req.getParameter("email");
		long phone=Long.parseLong(req.getParameter("phone"));
		Student s=st.getStudent(email,phone);
		PrintWriter out=resp.getWriter();
		if(s!=null) {
			if(req.getParameter("password").equals(req.getParameter("confirm"))) {
				if(s.getPassword().equals(req.getParameter("confirm"))) {
					//out.print("This password is already been exist");
					//same page(forgot.jsp)
					RequestDispatcher rd=req.getRequestDispatcher("forgotpassword.jsp");
					req.setAttribute("fail", "Password already exist");
					rd.forward(req, resp);
				}
				else {
					s.setPassword(req.getParameter("confirm"));
					if(st.updateStudent(s)) {
						//out.print("Password Updated");//login page
						RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
						req.setAttribute("success", "Congradulations! Password updated");
						rd.forward(req, resp);
					}
					else {
						//out.print("Some issue in password");//same page(forgot.jsp)
						RequestDispatcher rd=req.getRequestDispatcher("forgotpassword.jsp");
						req.setAttribute("fail", "Sorry! There may be issue in the password. Please Check");
						rd.forward(req, resp);
					}
				}
			}
			else {
				//out.print("Password Mismatch");//same page(forgot.jsp)
				RequestDispatcher rd=req.getRequestDispatcher("forgotpassword.jsp");
				req.setAttribute("fail", "Please check because there is a password mismatch");
				rd.forward(req, resp);
			}
		}
		else {
			//out.print("No student present within the credentials");//(login.jsp)
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			req.setAttribute("fail", "Sorry! There is no student present within these Credentials");
			rd.forward(req, resp);
		}
	}
}
