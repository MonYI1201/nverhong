package com.nverhong.two.service.user;

import java.util.List;

import com.nverhong.two.entity.user.User;

public interface LoginService {

	public List<User> find(String uname,String pwd);
}
