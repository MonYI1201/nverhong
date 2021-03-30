package com.nverhong.two.service.user;

import com.nverhong.two.entity.user.User;
/**
 * 用户登录
 * @author MonYI
 */
public interface LoginService {

	/**
	 * 查询该用户名和密码是否在数据库存在
	 * @param uname
	 * @return
	 */
	User findByLoginName(String uname);

	/**
	 * 通过email查询用户信息
	 * @param email
	 * @return
	 */
	User queryUserListByEmail(String email);
}
