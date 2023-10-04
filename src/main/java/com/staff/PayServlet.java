package com.staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Servlet mapping
@WebServlet("/PayServlet")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Retrieving parameter "sid" from the request
		String id = request.getParameter("sid");
		
		try {
			// Calling a method to retrieve staff details for the given id
			List<Staff> stfDetails = StaffDBUtil.getpayDetails(id);
			
			// Setting the retrieved staff details as an attribute in the request object
			request.setAttribute("stfDetails", stfDetails);
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		// Forwarding the request and response objects to "useraccount.jsp" for further processing
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
		
	}

}
