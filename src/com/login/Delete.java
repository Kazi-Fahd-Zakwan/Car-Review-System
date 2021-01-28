package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;          
    public Delete() {
        super(); 
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");			
		String sql = "delete from car where id = '"+id+"'";
		String url = "jdbc:mysql://localhost:/tutorial";
		String username = "root";
		String password = "";			
		boolean delete = false;
		
		try {			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);								
			PreparedStatement st = con.prepareStatement(sql);
			delete = st.executeUpdate() >0;
			
			if(delete) {
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
