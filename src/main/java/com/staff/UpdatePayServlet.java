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

@WebServlet("/UpdatePayServlet")
public class UpdatePayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieving form data
		String id = request.getParameter("stid");
		String name = request.getParameter("stname");
		String email = request.getParameter("stemail");
		String workhours = request.getParameter("sthours");
		double basicsalary = Double.parseDouble(request.getParameter("stbsal"));
		double tax = Double.parseDouble(request.getParameter("sttax"));
		double salary = Double.parseDouble(request.getParameter("stsalary"));

		boolean isTrue;

		// Calling the updatepay() method from StaffDBUtil to update staff pay
		isTrue = StaffDBUtil.updatepay(id, name, email, workhours, basicsalary, tax, salary);

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");

		if(isTrue == true) {
			
			
			List<Staff> stfDetails = StaffDBUtil.getpayDetails(id);
			request.setAttribute("stfDetails", stfDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		else {
			// Getting staff details and forwarding to unsuccess.jsp
			List<Staff> stfDetails = StaffDBUtil.getpayDetails(id);
			request.setAttribute("stfDetails", stfDetails);

			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}
}
