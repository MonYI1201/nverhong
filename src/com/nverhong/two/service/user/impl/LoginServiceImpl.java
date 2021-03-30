package com.nverhong.two.service.user.impl;

import com.nverhong.two.dao.user.LoginDao;
import com.nverhong.two.dao.user.impl.LoginDaoImpl;
import com.nverhong.two.entity.user.User;
import com.nverhong.two.service.user.LoginService;
import com.nverhong.two.utils.DataSourceUtil;

import java.sql.Connection;
/**
 * @author MonYI
 */
public class LoginServiceImpl implements LoginService {

	@Override
	public User findByLoginName(String uname) {
		Connection connection = null;
		User user = null;
		try {
			connection = DataSourceUtil.openConnection();
			LoginDao loginDao = new LoginDaoImpl(connection);
			user = loginDao.findByLoginName(uname);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return user;
	}

	@Override
	public User queryUserListByEmail(String email){
		Connection connection = null;
		User user = null;
		try{
			connection = DataSourceUtil.openConnection();
			LoginDao loginDao = new LoginDaoImpl(connection);
			user = loginDao.queryUserListByEmail(email);
		}catch (Exception e){
			e.printStackTrace();
		}
		return user;
	}
}
