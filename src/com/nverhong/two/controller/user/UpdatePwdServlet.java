package com.nverhong.two.controller.user;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.user.User;
import com.nverhong.two.service.user.LoginService;
import com.nverhong.two.service.user.impl.LoginServiceImpl;
import com.nverhong.two.utils.ReturnResult;
import com.nverhong.two.utils.SendMail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 修改密码
 * @author MonYI
 */
@WebServlet(urlPatterns = {"/UpdatePwd"} ,name = "/UpdatePwd")
public class UpdatePwdServlet extends AbstractServlet {

    private LoginService loginService;

    @Override
    public void init() throws ServletException {
        loginService = new LoginServiceImpl();
    }

    @Override
    public Class getServletClass() {
        return UpdatePwdServlet.class;
    }

    public String toView(HttpServletRequest req, HttpServletResponse resp)throws Exception{
        return "tgls/updatePwd";
    }

    public ReturnResult update(HttpServletRequest req , HttpServletResponse resp) throws Exception{
        ReturnResult result = new ReturnResult();
        String email = req.getParameter("email");
        SendMail mySendMail = new SendMail();
        User user =loginService.queryUserListByEmail(email);
        mySendMail.sendMail(email,"用户管理系统体系，您的密码为：123" );
        return result;
    }
}
