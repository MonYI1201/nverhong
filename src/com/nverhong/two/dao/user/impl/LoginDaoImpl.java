package com.nverhong.two.dao.user.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nverhong.two.dao.BaseDaoImpl;
import com.nverhong.two.dao.user.LoginDao;
import com.nverhong.two.entity.user.User;

public class LoginDaoImpl extends BaseDaoImpl implements LoginDao{

	public LoginDaoImpl(Connection connection) {
		super(connection);
	}

	@Override
	public Object tableToClass(ResultSet rs) throws Exception {
		User user = new User();
		user.setUid(rs.getInt("id"));
		user.setLoginName(rs.getString("loginName"));
		user.setUserName(rs.getString("userName"));
		user.setPassword(rs.getString("password"));
		user.setSex(rs.getInt("sex"));
		user.setIdentityCode(rs.getString("identityCode"));
		user.setEmail(rs.getString("email"));
		user.setMobile(rs.getString("mobile"));
		user.setType(rs.getInt("type"));
		return user;
	}

	@Override
	public List<User> find(String uname, String pwd) {
		List<User> list = new ArrayList<>();
		String sql = "select id,loginName,userName,password,sex,identityCode,email,mobile,type from nverhong_user where loginName=? and password = ?";
		Object[] params = new Object[] {uname,pwd};
		ResultSet resultSet = this.executeQuery(sql, params);
		User user = new User();
		try {
			while(resultSet.next()) {
				user = (User)this.tableToClass(resultSet);
				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	
}
