package com.studentap.serv;

import java.io.IOException;
import java.util.ArrayList;

import com.StudentApp.Dao.StudentDao;
import com.StudentApp.Dao.StudentDaoimp;
import com.StudentApp.dto.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewstudents")
public class ViewStudents extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st= new StudentDaoimp();
		ArrayList<Student> list=st.getStudent();
		if(list!=null) {
			RequestDispatcher rd=req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("stdlist", list);
			rd.forward(req, resp);		
		}
		else {
			RequestDispatcher rd=req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("error", "There is no student present");
			rd.forward(req, resp);
		}
	}
}
