package com.srie.dao;

import com.srie.po.User;

public class UserDAO {

	public boolean userLogin(User user){
		if("admin".equals(user.getUsername())&&
				"password".equals(user.getPassword())){
			return true;
		}
		return false;
	}
}
