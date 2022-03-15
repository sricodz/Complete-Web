package com.web.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.web.DAO.UserDao;
import com.web.DAO.UserDaoImpl;
import com.web.entity.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		
		PrintWriter pw = res.getWriter();
		
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String type=req.getParameter("type");
		
		System.out.println("inside login servlet");
		
		System.out.println(email);
		System.out.println(pass);
		System.out.println(type);
		
		HttpSession session = req.getSession();
		
		if(email.equals("admin") && pass.equals("admin")) {
			session.setAttribute("name", "admin");
			pw.println(0);
		}else {
			
			if(email==null || pass==null || type==null) {
				pw.println("All fields are required");
			}else {
				
				UserDao dao = new UserDaoImpl();
				User u = dao.search(email, pass, type);
				if(u.getName()==null) {
					pw.println("Invalid Credentials");
				}else {
					
					session.setAttribute("user", u);
					if(type.equals("student")) {
						pw.println(1);
					}else {
						pw.println(2);
					}
				}
			}
		}
	}
}
