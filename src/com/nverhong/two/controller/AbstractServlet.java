package com.nverhong.two.controller;

import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.PrintUtil;
import com.nverhong.two.utils.ReturnResult;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

/**
 * @author MonYI
 */
public abstract class AbstractServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	/**
	 * 反射机制获取类名
	 * @return
	 */
	public abstract Class getServletClass();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req,resp);	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String actionIndicator = req.getParameter("action");
		Method method = null;
		Object result = null; 
		
		try {
			if(EmptyUtils.isEmpty(actionIndicator)) {
				result = execute(req,resp);
			}else {
			
				method = getServletClass().getDeclaredMethod(actionIndicator, HttpServletRequest.class,HttpServletResponse.class);
				result = method.invoke(this, req,resp);
			}
			
			toView(req,resp,result);
			
		}catch(NoSuchMethodException e){
			String viewName = "404.jsp";
			req.getRequestDispatcher(viewName).forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
			if(!EmptyUtils.isEmpty(result)) {
				if(result instanceof String) {
					String viewName = "500.jsp ";
					req.getRequestDispatcher(viewName).forward(req, resp);
				}else {
					ReturnResult returnResult = new ReturnResult();
					returnResult.returnFail("系统错误");
					PrintUtil.write(returnResult, resp);
				}
			}else {
				String viewName = "500.jsp";
				req.getRequestDispatcher(viewName).forward(req, resp);
			}
		}
		
	}
	
	protected void toView(HttpServletRequest req,HttpServletResponse resp ,Object result ) throws IOException,ServletException{
		
		if(!EmptyUtils.isEmpty(result)) {
			
			if(result instanceof String) {
				String viewName = result.toString() + ".jsp";
				req.getRequestDispatcher(viewName).forward(req, resp);
			}else {
			
				PrintUtil.write(result, resp);
			}
		}
	}
	
	public Object execute(HttpServletRequest req,HttpServletResponse resp) {
		return "frame.jsp";
	}
}    
