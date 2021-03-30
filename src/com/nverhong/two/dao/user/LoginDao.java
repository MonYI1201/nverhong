package com.nverhong.two.dao.user;

import com.nverhong.two.entity.user.User;
import com.nverhong.two.param.UserParam;

import java.util.List;

/**
 * 用户登录dao层
 * @author MonYI
 */
public interface LoginDao {

	/**
	 * 查询该用户名和密码是否在数据库存在
	 * @param uname
	 * @return
	 */
	User findByLoginName(String uname);

	/**
	 *查询该用户名和密码是否在数据库存在
	 * @param userParam
	 * @return
	 */
	List<User> queryUserList(UserParam userParam);

	/**
	 * 通过email查询用户信息
	 * @param emial
	 * @return
	 */
	User queryUserListByEmail(String emial);
}
