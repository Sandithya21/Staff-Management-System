package com.staff;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieve the 'stid' parameter from the request
		String id = request.getParameter("stid");
		boolean isSuccess;
		
		// Call the 'deletepayment' method from the 'StaffDBUtil' class and store the result in 'isSuccess' variable
		isSuccess = StaffDBUtil.deletepayment(id);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		if (isSuccess == true) {
			//If the pay details are deleted successfully, display a success message and redirect to index.jsp
			out.println("<script>alert('Successfully Deleted!')</script>");
			out.println("<script>window.location.href='index.jsp';</script>");
		}
		else {
			// If the deletion fails, retrieve staff details using the 'getpayDetails' method from 'StaffDBUtil' class
			List<Staff> stfDetails = StaffDBUtil.getpayDetails(id);
			request.setAttribute("stfDetails", stfDetails);
			
			// Forward the request and response to 'useraccount.jsp'
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}


