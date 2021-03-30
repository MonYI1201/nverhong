package com.nverhong.two.controller.user;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.user.User;
import com.nverhong.two.service.user.LoginService;
import com.nverhong.two.service.user.impl.LoginServiceImpl;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.ReturnResult;
import com.nverhong.two.utils.SecurityUtils;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 用户登录控制器
 * @author MonYI
 */
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
	
	public ReturnResult toLogin(HttpServletRequest req,HttpServletResponse resp)throws Exception {
		ReturnResult result = new ReturnResult();
		String uname = req.getParameter("loginName");
		String pwd = req.getParameter("password");
		User user = loginService.findByLoginName(uname);

		if (EmptyUtils.isEmpty(user)) {
			result.returnFail("用户不存在");
		}else if (user.getPassword().equals(SecurityUtils.md5Hex(pwd))) {
				AsyncContext context = req.startAsync(req, resp);
				context.setTimeout(0);
				context.complete();
				req = (HttpServletRequest) context.getRequest();
				resp = (HttpServletResponse) context.getResponse();
				Thread login = new Thread(new Excutor(context, user));
				login.start();
				req.getSession().setAttribute("loginUser", user);
				result.returnSuccess("登陆成功");
			} else {
				result.returnFail("密码错误");
			}
		return result;
	}

	public class Excutor implements Runnable{
		private AsyncContext context;
		private User user;

		public Excutor(AsyncContext context,User user){
			this.context = context;
			this.user = user;
		}
		@Override
		public void run() {
		}
	}

}
