		package com.login.dao;
		
		import java.sql.Connection;
		import java.sql.DriverManager;
		import java.sql.Statement;
		import java.sql.PreparedStatement;
		import java.sql.ResultSet;
		
	public class SignupDao {
		
		public boolean insert(String name, String uname, String email, String pass, String cpass) {	
			
			String sql1 = "select * from user where uname='"+uname+"'";			
			String sql = "INSERT INTO user VALUES ('"+name+"','"+uname+"','"+email+"','"+pass+"','"+cpass+"')";
			String url = "jdbc:mysql://localhost:/tutorial";
			String username = "root";
			String password = "";			
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con1 = DriverManager.getConnection(url,username,password);								
				PreparedStatement st = con1.prepareStatement(sql1);
				ResultSet rs = st.executeQuery();
				
				if(rs.next()) {				
					return false;
				}
				else {
				Statement st1 = con1.createStatement();											
				st1.executeUpdate(sql);		
				return true;
				}				
			} catch (Exception e) {		
				e.printStackTrace();
			}		
			return false;
		}
	}