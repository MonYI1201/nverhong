package com.nverhong.two.dao.user;

import java.util.List;

import com.nverhong.two.entity.user.User;

public interface LoginDao {

	List<User> find(String uname, String pwd);

}
