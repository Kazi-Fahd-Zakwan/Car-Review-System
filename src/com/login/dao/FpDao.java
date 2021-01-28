	package com.login.dao;	
	
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.Statement;
	
public class FpDao {
	public boolean checkPass(String uname, String email, String pass, String cpass) {
		String sql1 = "select * from user where uname='"+uname+"' and email = '"+email+"'";
		String sql = "UPDATE user SET pass='"+pass+"', cpass='"+cpass+"' WHERE uname='"+uname+"'";
		String url = "jdbc:mysql://localhost:/tutorial";
		String username = "root";
		String password = "";
				
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url,username,password);
						
			PreparedStatement st = con1.prepareStatement(sql1);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {	
				Statement st1 = con1.createStatement();											
				st1.executeUpdate(sql);		
				return true;
			}			
		} catch (Exception e) {		
			e.printStackTrace();
		}
	return false;	
	}
	
	public boolean checkOldPass(String uname, String email, String pass) {
		String sql1 = "select * from user where uname='"+uname+"' and email = '"+email+"'";
		String url = "jdbc:mysql://localhost:/tutorial";
		String username = "root";
		String password = "";
				
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url,username,password);
						
			PreparedStatement st = con1.prepareStatement(sql1);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {	
				if(rs.getString("pass").equals(pass)) {
					return true;
				}
				else {
					return false;
				}								
			}			
		} catch (Exception e) {		
			e.printStackTrace();
		}
	return false;	
	}
}