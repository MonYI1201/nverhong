package com.nverhong.two.dao.user.impl;

import com.nverhong.two.dao.BaseDaoImpl;
import com.nverhong.two.dao.user.LoginDao;
import com.nverhong.two.entity.user.User;
import com.nverhong.two.param.UserParam;
import com.nverhong.two.utils.EmptyUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author MonYI
 */
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
	public User findByLoginName(String uname) {
		User user = null;
		try {
			UserParam param = new UserParam();
			param.setLoginName(uname);
			List<User> userList = queryUserList(param);
			if (EmptyUtils.isEmpty(userList)) {
				return null;
			} else {
				return userList.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return user;
	}

	@Override
	public List<User> queryUserList(UserParam params){
		List<Object> paramsList=new ArrayList<Object>();
		List<User> userList=new ArrayList<User>();
		StringBuffer sql = new StringBuffer("  select id,loginName,password,userName,sex,identityCode,email,mobile,type from nverhong_user where 1=1 ");
		ResultSet resultSet = null;
		try {
			if(EmptyUtils.isNotEmpty(params.getLoginName())){
				sql.append(" and loginName = ? ");
				paramsList.add(params.getLoginName());
			}
			if(EmptyUtils.isNotEmpty(params.getSort())){
				sql.append(" order by " + params.getSort()+" ");
			}
			if(params.isPage()){
				sql.append(" limit  " + params.getStartIndex() + "," + params.getPageSize());
			}
			resultSet=this.executeQuery(sql.toString(),paramsList.toArray());
			while (resultSet.next()) {
				User user = (User)this.tableToClass(resultSet);
				userList.add(user);
			}
		}  catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
			this.closeResource(resultSet);
		}
		return userList;
	}

	@Override
	public User queryUserListByEmail(String email){
		User user = null;
		String sql = "select loginName,userName,password,sex,identityCode,email,mobile,type from nverhong_user where email = ? ";
		Object[] params = new Object[]{email};
		ResultSet resultSet = this.executeQuery(sql,params);
		try{
			while (resultSet.next()){
				user =(User) this.tableToClass(resultSet);
			}
		}catch (SQLException e){
			e.printStackTrace();
		}catch (Exception e){
			e.printStackTrace();
		}
		return user;
	}
}
