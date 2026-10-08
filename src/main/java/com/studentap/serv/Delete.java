package com.studentap.serv;

import java.io.IOException;

import com.StudentApp.Dao.StudentDaoimp;
import com.StudentApp.dto.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class Delete extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("sid"));
		
		Student s=new Student();
		s.setSid(id);
		
		StudentDaoimp st=new StudentDaoimp();
		
		if(st.deleteStudent(s)) {
			resp.sendRedirect("viewstudents?message=User has been deleted successfully");
		}
		else {
			RequestDispatcher rd=req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("message", "Sorry! Delection has not done"); 
			rd.forward(req, resp);
		}
	}
}
