package com.staff;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Annotation to map the servlet to a specific URL
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieving username and password from the request parameters
		String username2  = request.getParameter("username2");
		String password2  = request.getParameter("password2");
		
		boolean isTrue ;
		
		// Validating the login credentials using StaffDBUtil class
		isTrue = StaffDBUtil.validateLogin(username2, password2);
		
		// Setting the response content type to HTML
		response.setContentType("text/html");
		
		// Creating a PrintWriter object to write HTML response
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		if(isTrue == true) {
			// Redirecting to the index.jsp page if login is successful
			out.println("<script>window.location.href='index.jsp';</script>");
		} else {
			// Displaying an alert and redirecting to the login.jsp page if login is unsuccessful
			out.println("<script>alert('Your Username or Password is incorrect!')</script>");
	    	out.println("<script>window.location.href='login.jsp';</script>");
		}
	}
}
