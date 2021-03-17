package com.nverhong.two.controller.user;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.user.User;
import com.nverhong.two.service.user.LoginService;
import com.nverhong.two.service.user.impl.LoginServiceImpl;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.ReturnResult;

@WebServlet(urlPatterns = {"/Login"},name="/Login" ,asyncSupported=true)
public class LoginServlet extends AbstractServlet {

	private static final long serialVersionUID = 1L;
	private LoginService loginService;
	
	@Override
	public Class getServletClass() {
		return LoginServlet.class;
	}

	@Override
	public void init() throws ServletException {
		loginService = new LoginServiceImpl();
	}

	public String toView(HttpServletRequest req,HttpServletResponse resp)throws Exception{
		
		return "login";
	}
	
	public ReturnResult toLogin(HttpServletRequest req,HttpServletResponse resp)throws Exception{
		ReturnResult result = new ReturnResult();
		String uname = req.getParameter("loginName");
		String pwd = req.getParameter("password");
		List<User> loginList = loginService.find(uname, pwd);
		
		if(!EmptyUtils.isEmpty(loginList)) {
			result.setData(loginList);
			result.setMessage("登陆成功");
		}else {
			result.setMessage("登陆失败");
		}
		return result;
	}
}
