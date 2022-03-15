package com.web.DAO;

import com.web.entity.User;

public interface UserDao {
	
	public boolean addUser(User u,String type);
	public User search(String email,String pass,String type);
	public User update(String name,String place,String phone,int id);
}
