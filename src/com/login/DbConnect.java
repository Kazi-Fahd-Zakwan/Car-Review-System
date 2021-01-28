package com.login;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	static Connection con = null;
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:/tutorial", "root", "");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}

}
