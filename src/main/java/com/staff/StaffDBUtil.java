package com.staff;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StaffDBUtil {
	
	private static boolean isPay; // Variable to store the payment status
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Method to insert payment details into the database
	public static boolean insertpay(String name, String email, int workhours, double basicsalary, double tax, double salary) {
		
		boolean isPay = false;
		
		try {
			con = DataBaseConnect.getConnection(); // Get the database connection
			stmt = con.createStatement(); 
			
			// SQL query to insert payment details into the 'payment' table
			String sql = "insert into payment values(0,'" + name + "', '" + email + "', '" + workhours + "', '" + basicsalary + "', '" + tax + "', '" + salary + "')";
			
			int rs = stmt.executeUpdate(sql); // Execute the SQL query
			
			if(rs > 0) {
				isPay = true; // Payment details inserted successfully
			} else {
				isPay = false; // Failed to insert payment details
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isPay; // Return the payment status
	}
	
	// Method to update payment details in the database
	public static boolean updatepay(String id, String name, String email, String workhours, double basicsalary, double tax, double salary) {
		try {
			con = DataBaseConnect.getConnection();
			stmt = con.createStatement();
    		
    		// SQL query to update payment details in the 'payment' table based on the ID
    		String sql = "update payment set name='" + name + "',email='" + email + "',workhours='" + workhours + "',basicsalary='" + basicsalary + "',tax='" + tax + "', salary='" + salary + "'"
    				+ "where id='" + id + "'";
    		
    		int rs = stmt.executeUpdate(sql); // Execute the SQL query
    		
    		if(rs > 0) {
    			isPay = true; // Payment details updated successfully
    		} else {
    			isPay = false; // Failed to update payment details
    		}
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isPay; // Return the payment status
    }
	
	// Method to retrieve payment details from the database
	public static List<Staff> getpayDetails(String Id) {
    	ArrayList<Staff> stf = new ArrayList<>();
    	int convertedID = Integer.parseInt(Id);
    	
    	try {
    		con = DataBaseConnect.getConnection();
			stmt = con.createStatement();
			
			// SQL query to retrieve payment details from the 'payment' table based on the ID
    		String sql = "select * from payment where id='" + convertedID + "'";
    		rs = stmt.executeQuery(sql); // Execute the SQL query
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				int workhours = rs.getInt(4);
				double basicsalary = rs.getDouble(5);
				double tax = rs.getDouble(6);
				double salary = rs.getDouble(7);
    			
    			Staff s = new Staff(id, name, email, workhours, basicsalary, tax, salary);
    			stf.add(s); // Add the payment details to the list
    		}
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return stf; // Return the list of payment details
    }
	
	// Method to delete payment details from the database
	public static boolean deletepayment(String id) {
		int convertedID = Integer.parseInt(id);

	    try {
	    	con = DataBaseConnect.getConnection();
	    	stmt = con.createStatement();
	    	
	    	// SQL query to delete payment details from the 'payment' table based on the ID
	    	String sql = "delete from payment where id='" + convertedID + "'";
	    	int rs = stmt.executeUpdate(sql); // Execute the SQL query
	   		
	   		if (rs > 0) {
	   			isPay = true; // Payment details deleted successfully
	   		} else {
	    		isPay = false; // Failed to delete payment details
	    	}
	    		
	   	} catch (Exception e) {
	   		e.printStackTrace();
	   	}
    	
	    return isPay; // Return the payment status
	}

	// Method to validate login credentials
	public static boolean validateLogin(String username2, String password2) {
		boolean isPay = false;

		try {
			con = DataBaseConnect.getConnection();
	    	stmt = con.createStatement();
			
			// SQL query to validate login credentials in the 'login' table
			String sql = "select * from login where username='" + username2 + "' && password='" + password2 + "'";
			ResultSet rs = stmt.executeQuery(sql); // Execute the SQL query
			
			if (rs.next()) {
				isPay = true; // User authenticated
	        } else {
	        	isPay = false; // User not authenticated
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isPay; // Return the authentication status
	}
}
