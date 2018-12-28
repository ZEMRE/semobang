package com.semobang.semobang;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnectionTest {

	private static final String DRIVER = "com.mysql.jdbc.Driver";	
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/semobang?useSSL=false&serverTimezone=UTC";

	
	private static final String USER = "admin";
	private static final String PW = "admin";
	
	public void testConnection() throws Exception {
		
		Class.forName(DRIVER);
		
		try (Connection conn = DriverManager.getConnection (URL, USER, PW)) 
		{
			System.out.println(conn);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}