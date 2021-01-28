		package com.login;				
		
		import java.io.IOException;
		import javax.servlet.ServletException;
		import javax.servlet.annotation.WebServlet;
		import javax.servlet.http.HttpServlet;
		import javax.servlet.http.HttpServletRequest;
		import javax.servlet.http.HttpServletResponse;
		import javax.servlet.http.HttpSession;

import com.login.dao.Encryption;
import com.login.dao.LoginDao;
		
		@WebServlet("/Login")
		public class Login extends HttpServlet {
			private static final long serialVersionUID = 1L;
			
			public Login() {
				super();
			}
		
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
				String uname = request.getParameter("uname");
				
				String mpass = request.getParameter("pass");
				
				Encryption e = new Encryption();
				
				String pass = e.MD5(mpass);
										
				LoginDao dao = new LoginDao();	
				
				HttpSession session = request.getSession();	 				
				
				if(!dao.check(uname,pass)) {													 
					session.setAttribute("pass", "Username & Password Mismatch");			
					response.sendRedirect("login.jsp");								
				}
				else if(dao.check(uname,pass)) {												
					session.setAttribute("username", uname);
					response.sendRedirect("welcome.jsp");													
				}
				else {
					session.setAttribute("unsuc", "Sign In Unsuccessful");
					response.sendRedirect("login.jsp");
				}			
			}
		}