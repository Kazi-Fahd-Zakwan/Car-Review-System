package com.login.dao;

import java.io.InputStream;
import java.io.File;
import java.io.FileInputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProfileDao {
	byte[ ] imgData = null ;
	
	public boolean insert(String username, String name, String desc, String myloc) {
	
	String url = "jdbc:mysql://localhost:/tutorial";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, "root", "");
			File image= new File(myloc);
			PreparedStatement pstmt = conn.prepareStatement("insert into car(username, car_name, car_desc,image) " + "values(?,?,?,?)");
			pstmt.setString(1, username);
			pstmt.setString(2, name);
			pstmt.setString(3, desc);
			FileInputStream fis=new FileInputStream(image);
			pstmt.setBinaryStream(4, (InputStream) fis, (int) (image.length()));
			int count = pstmt.executeUpdate();
			if(count==0) {
				return false;
			}
			else {
				return true;
			}
	} catch (Exception e) {		
		e.printStackTrace();
	}		
	return false;
}
}