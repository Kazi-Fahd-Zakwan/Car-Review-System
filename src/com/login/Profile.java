package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.login.dao.ProfileDao;

@WebServlet("/Profile")
public class Profile extends HttpServlet {
	
	private static final long serialVersionUID = 1L;       
   
    public Profile() {
        super();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
	
		String name = request.getParameter("name");
		
		String desc = request.getParameter("desc");		
		
		String myloc=request.getParameter("myimg");
		
		ProfileDao dao = new ProfileDao();
				
		if(!dao.insert(username, name, desc, myloc)) {
			response.sendRedirect("profile.jsp?Insertion_Error");
		}else {
			response.sendRedirect("profile.jsp?Insertion_Successful");				
		}
	}
}