package com.studentap.serv;

import java.io.IOException;

import com.StudentApp.Dao.StudentDao;
import com.StudentApp.Dao.StudentDaoimp;
import com.StudentApp.dto.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class Update extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st=new StudentDaoimp();
		HttpSession session = req.getSession(false);
		Student s =(Student) session.getAttribute("Student");
		s.setSname(req.getParameter("name"));
		s.setBranch(req.getParameter("branch"));
		s.setLocation(req.getParameter("location"));
		if(st.updateStudent(s)) {
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			req.setAttribute("success", "Congradulations! Update Succesfully Done");
			rd.forward(req, resp);
		}
		else {
			RequestDispatcher rd=req.getRequestDispatcher("update.jsp");
			req.setAttribute("fail", "Sorry! Update Failed");
			rd.forward(req, resp);
		}
	}
}
