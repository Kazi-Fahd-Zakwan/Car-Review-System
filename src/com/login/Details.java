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

@WebServlet("/Details")
public class Details extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String id = "";
       
    public Details() {
        super();

    }    

	protected void service(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException  {
	byte[] img = null;		
	ServletOutputStream sos = null;	
	try {	
	String sql = "select image from car where id = '"+id+"'";
	Connection con = DbConnect.getConnection();	
	PreparedStatement st = con.prepareStatement(sql);
	ResultSet rs = st.executeQuery();					
		if(rs.next()) {  
			img = rs.getBytes(1);  									    		   
		    }
			sos = res.getOutputStream();
			sos.write(img);		 	 			
			}
		catch (Exception e) {		
			e.printStackTrace();
			}	
	}
}