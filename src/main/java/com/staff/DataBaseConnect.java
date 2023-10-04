package com.staff;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseConnect {
	
	// Database connection details
	
	private static String url = "jdbc:mysql://localhost:3306/payroll"; // URL of the database
	private static String username = "root"; // Username for database authentication
	private static String password = "Sandithya_00"; // Password for database authentication
	private static Connection con; // Connection object to establish database connection

	public static Connection getConnection() {
		
		try {
			// Load the MySQL JDBC driver class
			Class.forName("com.mysql.jdbc.Driver");
			
			// Establish the database connection using the provided URL, username, and password
			con = DriverManager.getConnection(url, username, password);
			
		}
		catch (Exception e) {
			System.out.println("Connection is not successful"); // Print error message if connection fails
		}
		
		return con; // Return the connection object
	} 
	
}
