package com.web.servlets;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet{
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		
		HttpSession session=req.getSession();
		session.removeAttribute("user");
		session.invalidate();
		res.sendRedirect("login.jsp");
	}
}
