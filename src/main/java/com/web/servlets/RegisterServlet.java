package com.web.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.web.DAO.UserDao;
import com.web.DAO.UserDaoImpl;
import com.web.entity.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		
		PrintWriter pw = res.getWriter();
		
		System.out.println("inside register servlet");
		
		String name=req.getParameter("uname");
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String cpass=req.getParameter("cpass");
		String phone=req.getParameter("phone");
		String place=req.getParameter("place");
		String gender=req.getParameter("gender");
		String type=req.getParameter("type");
		String check=req.getParameter("check");
		
		if(name!="" && email!="" && pass!="" && cpass!="" && phone!="" && place!="" && gender!="" && type!="" && check!="") {
			
			if(name.length()<2) {
				pw.println("Name must be atleast 2 characters");
			}else if(pass.length()<8) {
				pw.println("Password must be atleast 8 characters");
			}else if(!cpass.equals(pass)) {
				pw.println("Password and Confirm password not matched");
			}else {
				
				UserDao d = new UserDaoImpl();
				User u = new User(name,email,pass,phone,place,gender);
				
				boolean result=d.addUser(u, type);
				
				if(result) {
					pw.println(1);
				}else {
					pw.println("Invalid Data");
				}
			}
		}else {
			pw.println("All Fields are Required");
		}
				
	}
}
