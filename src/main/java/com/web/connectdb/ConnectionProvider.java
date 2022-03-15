package com.web.connectdb;

import java.sql.*;

public class ConnectionProvider {
	
	private Connection con;
	
	public Connection getConnect()  {
		
		try {
			if(con==null) {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url="jdbc:mysql://localhost:3306/project";
				String uname="root";
				String pass="root";
				con=DriverManager.getConnection(url, uname, pass);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
