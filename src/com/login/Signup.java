	package com.login;
	
	import java.io.IOException;


	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.Encryption;
	import com.login.dao.SignupDao;
	
	@WebServlet("/Signup")
	public class Signup extends HttpServlet {
		private static final long serialVersionUID = 1L;
		
		public Signup() {
			super();
		}
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String name = request.getParameter("name");
			
			String uname = request.getParameter("uname");
			
			String email = request.getParameter("email");
			
			String mpass = request.getParameter("pass");
			
			String mcpass = request.getParameter("cpass");
						
			Encryption e = new Encryption();
			
			String pass = e.MD5(mpass);
			
			String cpass = e.MD5(mcpass);
								
			char[] c_arr = mpass.toCharArray();						
			
			SignupDao dao = new SignupDao();
			
			HttpSession session = request.getSession();
						
			if(c_arr.length<8) {					 
				session.setAttribute("pass_small", "Password length less than 8");
				response.sendRedirect("signup.jsp");
			}
			else if(!pass.equals(cpass)) {					 
				session.setAttribute("pass_mis", "Password Mismatch");
				response.sendRedirect("signup.jsp");
			}
			else if(!dao.insert(name, uname, email, pass, cpass)) {					 
				session.setAttribute("user", "Username Already Taken");
				response.sendRedirect("signup.jsp");
			}
			else {
				session.setAttribute("username", uname);
				response.sendRedirect("welcome.jsp");
			}
	}
}