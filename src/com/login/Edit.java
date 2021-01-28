package com.login;

import java.io.File;
import java.io.InputStream;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Edit() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String desc = request.getParameter("desc");
		String image2 = request.getParameter("myimg");			
					
		String sql = "UPDATE car " + "SET car_name = ?, car_desc = ?, image = ?" + "WHERE id = ?";
		String url = "jdbc:mysql://localhost:/tutorial";
		String username = "root";
		String password = "";			
		boolean edit;
		
		
		try {			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);	
			File image= new File(image2);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, desc);
			FileInputStream fis=new FileInputStream(image);
			pstmt.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
			pstmt.setString(4, id);
            edit = pstmt.executeUpdate() > 0;            
            if(edit) {            	
    			response.sendRedirect("profile.jsp");
    			}
    			else {    				
    			response.sendRedirect("profile.jsp");	
    			}
		} catch (Exception e) {		
			e.printStackTrace();
		}
	}
}