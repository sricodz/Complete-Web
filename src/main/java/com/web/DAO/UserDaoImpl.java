package com.web.DAO;

import java.sql.*;
import com.web.connectdb.ConnectionProvider;
import com.web.entity.User;

public class UserDaoImpl implements UserDao {
	
	ConnectionProvider cp = new ConnectionProvider();
	private Connection con= cp.getConnect();
	
	@Override
	public boolean addUser(User u,String type) {
		
		boolean flag=false;
		try {
			String sql = "insert into "+type+" (name,email,password,phone,place,gender) values(?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, u.getName());
			pst.setString(2, u.getEmail());
			pst.setString(3, u.getPassword());
			pst.setString(4, u.getPhone());
			pst.setString(5, u.getPlace());
			pst.setString(6, u.getGender());
			
			pst.executeUpdate();
			flag=true;
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public User search(String email, String pass, String type) {
		
		User u = new User();
		try {
			String sql="select * from "+type+" where email=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setEmail(email);
				u.setGender(rs.getString("gender"));
				u.setPhone(rs.getString("phone"));
				u.setPlace(rs.getString("place"));
			}
			
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return u;
	}

	@Override
	public User update(String name, String place, String phone,int id) {
		 User u=new User();
		try {
			String sql="update student set name=? ,place=?,phone=? where id=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, place);
			pst.setString(3, phone);
			pst.setInt(4, id);
			pst.executeUpdate();
			
			String q="select * from student where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs =ps.executeQuery();
			while(rs.next()) {
				u.setName(rs.getString("name"));
				u.setPhone(rs.getString("phone"));
				u.setPlace(rs.getString("place"));
				u.setFlag(true);
			}
			
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	
	
}
