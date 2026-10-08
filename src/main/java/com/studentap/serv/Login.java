package com.studentap.serv;

import java.io.IOException;
import java.io.PrintWriter;

import com.StudentApp.Dao.StudentDao;
import com.StudentApp.Dao.StudentDaoimp;
import com.StudentApp.dto.Student;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")//url declaration
public class Login extends HttpServlet{

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	StudentDao st = new StudentDaoimp();
	long phone = Long.parseLong(req.getParameter("phone"));
	String password = req.getParameter("pw");
	PrintWriter out = resp.getWriter();
	Student s = st.getStudent(phone, password);
	HttpSession session = req.getSession(true);
	
	if(s!=null) {
		//out.print("Login Successfull");
		RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
		//req.setAttribute("Student", s);
		session.setAttribute("Student", s);
		req.setAttribute("success", "Woah! You have successfully logged in");
		rd.forward(req, resp);
	} 
	else {
		//out.print("Enter valid phone number or password");
		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
		req.setAttribute("fail", "Login failed");
		rd.forward(req, resp);
	}
}
}





