package com.nverhong.two.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.service.product.ProductService;
import com.nverhong.two.service.product.impl.ProductServiceImpl;
import com.nverhong.two.utils.Pager;
import com.nverhong.two.utils.PrintUtil;
import com.nverhong.two.utils.ReturnResult;
import com.nverhong.two.utils.EmptyUtils;

@WebServlet(urlPatterns = {"/product"}, name = "/product")
public class ProductServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ProductService productService = new ProductServiceImpl();

		String page1 = req.getParameter("page");
		String pageSize = req.getParameter("limit");
		String levelStr = req.getParameter("level");
		String keyWord = req.getParameter("keyWord");
		String category = req.getParameter("category");
		int level=EmptyUtils.isNotEmpty(levelStr)?Integer.parseInt(levelStr):0;
		int rowPerPage = EmptyUtils.isNotEmpty(pageSize)? Integer.parseInt(pageSize) : 10;
		int currentPage = 1;

		if(page1 != null ||  !EmptyUtils.isEmpty(page1)) {
			currentPage = Integer.parseInt(page1);
		}

		Integer size = productService.getProductRowCount(category, level, keyWord);
		Pager pager = new Pager(size,rowPerPage,currentPage);
		List<Product> productList = productService.getAllProduct(pager,category,level,keyWord);

		System.out.println(size);
		ReturnResult result = new ReturnResult();
		result.returnSuccess("操作成功");
		result.setData(productList);
		result.setTotal(size.intValue());
		PrintUtil.write(result, resp);
	}
}
