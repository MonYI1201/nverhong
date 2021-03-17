package com.nverhong.two.service.user.impl;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.nverhong.two.dao.user.LoginDao;
import com.nverhong.two.dao.user.impl.LoginDaoImpl;
import com.nverhong.two.entity.user.User;
import com.nverhong.two.service.user.LoginService;
import com.nverhong.two.utils.DataSourceUtil;

public class LoginServiceImpl implements LoginService {

	@Override
	public List<User> find(String uname, String pwd) {
		Connection connection = null;
		List<User> list = new ArrayList<>();
		try {
			connection = DataSourceUtil.openConnection();
			LoginDao loginDao = new LoginDaoImpl(connection);
			list = loginDao.find(uname,pwd);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return list;
	}

	
}
