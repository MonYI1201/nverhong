package com.nverhong.two.controller.product;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.service.product.ProductCategoryService;
import com.nverhong.two.service.product.ProductService;
import com.nverhong.two.service.product.impl.ProductCategoryServiceImpl;
import com.nverhong.two.service.product.impl.ProductServiceImpl;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.Pager;
import com.nverhong.two.utils.PrintUtil;
import com.nverhong.two.utils.ProductCategoryVo;
import com.nverhong.two.utils.ReturnResult;

@WebServlet(urlPatterns = {"/Product"}, name = "/product")
public class ProductServlet extends AbstractServlet{

	private static final long serialVersionUID = 1L;
	
	private ProductService productService;
	private ProductCategoryService productCategoryService;
	

	@Override
	public void init() throws ServletException {
		productService = new ProductServiceImpl();
		productCategoryService = new ProductCategoryServiceImpl();
	}

	public String toView (HttpServletRequest request,HttpServletResponse response)throws Exception{

		List<ProductCategoryVo> productCategoryVoList = productCategoryService.queryAllProductCategoryList();
		request.setAttribute("productCategoryVoList", productCategoryVoList);
		return "/tgls/sellingGoods";
		
	}
	
	public ReturnResult getAllProduct(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ReturnResult result = new ReturnResult();
		req.setCharacterEncoding("utf-8");
		String page1 = req.getParameter("page");
		String pageSize = req.getParameter("limit");
		String levelStr = req.getParameter("level");
		String keyWord = req.getParameter("keyword");
		String category = req.getParameter("category");
		int level=EmptyUtils.isNotEmpty(levelStr)?Integer.parseInt(levelStr):0;
		int rowPerPage = EmptyUtils.isNotEmpty(pageSize)? Integer.parseInt(pageSize):5;
		int currentPage = 1;
		if(page1 != null ||  !EmptyUtils.isEmpty(page1)) {
			currentPage = Integer.valueOf(page1).intValue();
		}

		Integer size = productService.getProductRowCount(category, level, keyWord);
		Pager pager = new Pager(size,rowPerPage,currentPage);
		List<Product> productList = productService.getAllProduct(pager,category,level,keyWord);
		
		
		result.returnSuccess("操作成功");
		result.setData(productList);
		result.setTotal(size.intValue());
		
		return result;
	}

	public ReturnResult delete(HttpServletRequest request,HttpServletResponse response) throws Exception{
		ReturnResult result = new ReturnResult();
		String productId = request.getParameter("id");
		Integer id = Integer.valueOf(productId).intValue();
		Product product = new Product();
		product.setId(id);
		int a = productService.isDeleteProductById(product);
		result.setData(a);
		result.setMessage("删除成功");
		return result;
	}

	@Override
	public Class getServletClass() {
		
		return ProductServlet.class;
	
	}
}
