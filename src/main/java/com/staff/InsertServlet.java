package com.staff;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Retrieving data from the request parameters
		String name = request.getParameter("pname");
		String email = request.getParameter("pemail");
		int workhours = Integer.parseInt(request.getParameter("phour"));
		double basicsalary = Double.parseDouble(request.getParameter("bsal"));
		double tax = Double.parseDouble(request.getParameter("tax"));
		double salary = Double.parseDouble(request.getParameter("salary"));
		
		boolean isStf;
		
		// Calling the StaffDBUtil class to insert the pay details into the database
		isStf = StaffDBUtil.insertpay(name, email, workhours, basicsalary, tax, salary);
		
		// Setting the response content type to HTML
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
	    out.println("<html><body>");

	    if(isStf) {
	    	// If the pay details are inserted successfully, display a success message and redirect to index.jsp
	    	 out.println("<script>alert('Successfully Inserted!')</script>");
	    	 out.println("<script>window.location.href='index.jsp';</script>");
	    	
	    }else {
	    	// If the pay details insertion is unsuccessful, display an error message and redirect back to payinsert.jsp
	    	out.println("<script>alert('Inserted Unsuccessfully!')</script>");
	    	out.println("<script>window.location.href='payinsert.jsp';</script>");
	    }
		
	}
}
