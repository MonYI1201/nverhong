package com.nverhong.two.controller.product;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.service.product.ProductCategoryService;
import com.nverhong.two.service.product.impl.ProductCategoryServiceImpl;
import com.nverhong.two.utils.ProductCategoryVo;
import com.nverhong.two.utils.ReturnResult;
import com.nverhong.two.utils.UploadUtils;

@WebServlet(urlPatterns = {"/ProductAdd"},name="/ProductAdd")
public class ProductAddServlet extends AbstractServlet{

	private static final long serialVersionUID = 1L;
	private ProductCategoryService productCategoryService;

	@Override
	public Class getServletClass() {
		return ProductAddServlet.class;
	}
	
	public void init() throws ServletException {
		productCategoryService = new ProductCategoryServiceImpl();
	}

	public String toView (HttpServletRequest request,HttpServletResponse response)throws Exception{

		List<ProductCategoryVo> productCategoryVoList = productCategoryService.queryAllProductCategoryList();
		request.setAttribute("productCategoryVoList", productCategoryVoList);
		return "/tgls/addGoods";
	}
	
	public ReturnResult add (HttpServletRequest request,HttpServletResponse response)throws Exception{
		ReturnResult result = new ReturnResult();
		UploadUtils upl = new UploadUtils();
		upl.setSavePath("E:/GitUp/nverhong/WebRoot/" + upl.getBasePath() + "/");
		String[] result1 = upl.uploadFile(request);
		System.out.println(result1[0]);
		System.out.println(result1[1]);
		System.out.println(result1[2]);
		System.out.println(result1[3]);
		System.out.println(result1[4]);
		return result;
	}
}
