package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.Encryption;
import com.login.dao.FpDao;

@WebServlet("/Fp")
public class Fp extends HttpServlet {
	private static final long serialVersionUID = 1L;
			
	
	
    public Fp() {
        super();        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	String	uname = request.getParameter("uname");
		
	String	email = request.getParameter("email");
		
	String	mpass = request.getParameter("pass");
		
	String	mcpass = request.getParameter("cpass");
				
		Encryption e = new Encryption();
		
		String	pass = e.MD5(mpass);
		
		String	cpass = e.MD5(mcpass);
				
		char[] c_arr = mpass.toCharArray();
		
		FpDao dao = new FpDao();
		
		HttpSession session = request.getSession();
		
		if(c_arr.length<8) {
			session.setAttribute("pass_small", "Password length less than 8");
			response.sendRedirect("fp.jsp");
		}
		else if(!mpass.equals(mcpass)) {		
			session.setAttribute("pass_mis", "Password Mismatch");
			response.sendRedirect("fp.jsp");
		}
		
		else if(dao.checkOldPass(uname, email, pass)) {
			session.setAttribute("pass_old", "Old Password Used");
			response.sendRedirect("fp.jsp");
		}
		
		else if(dao.checkPass(uname, email, pass, cpass)) {
			session.setAttribute("pass_chn", "Password Changed Successfully");
			response.sendRedirect("login.jsp");
		}		
				
		else {
			session.setAttribute("user_email", "Username & Email Does not Match");
			response.sendRedirect("fp.jsp");
		}
	}
}