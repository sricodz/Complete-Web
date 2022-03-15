package com.web.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.web.DAO.UserDao;
import com.web.DAO.UserDaoImpl;
import com.web.entity.User;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		
		System.out.println("inside update servlet");
		
		PrintWriter pw = res.getWriter();
		
		String name=req.getParameter("name");
		String place=req.getParameter("place");
		String phone=req.getParameter("phone");
		String id=req.getParameter("id");
		
		System.out.println(id);
		String temp="";
		if(name!=null && place!=null && phone!=null && id!=null ) {
			
			UserDao dao=new UserDaoImpl();
			for(int i=0;i<id.length();i++) {
				if(id.charAt(i)!='/') {
					temp=temp+id.charAt(i);
				}
			}
			System.out.println(temp);
			int key=Integer.parseInt(temp);
			User data=dao.update(name, place, phone, key);
			if(data.getName()!=null) {
				pw.println(1);
				HttpSession session = req.getSession();
				session.setAttribute("data", data);
			}else {
				pw.println("Invalid Details");
			}
			
		}else {
			pw.println("Invalid Details");
		}
	}
}
