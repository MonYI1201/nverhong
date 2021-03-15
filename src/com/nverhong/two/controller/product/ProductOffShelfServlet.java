package com.nverhong.two.controller.product;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.service.product.ProductCategoryService;
import com.nverhong.two.service.product.ProductOffShelfService;
import com.nverhong.two.service.product.ProductService;
import com.nverhong.two.service.product.impl.ProductCategoryServiceImpl;
import com.nverhong.two.service.product.impl.ProductOffShelfServiceImpl;
import com.nverhong.two.service.product.impl.ProductServiceImpl;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.Pager;
import com.nverhong.two.utils.ProductCategoryVo;
import com.nverhong.two.utils.ReturnResult;

@WebServlet(urlPatterns = {"/ProductOffShelf"},name="/ProductOffShelf")
public class ProductOffShelfServlet extends AbstractServlet{

	private static final long serialVersionUID = 1L;
	private ProductOffShelfService productOffShelfService;
	private ProductService productService;
	private ProductCategoryService productCategoryService;
	
	@Override
	public void init() throws ServletException {
		productOffShelfService = new ProductOffShelfServiceImpl();
		productService = new ProductServiceImpl();
		productCategoryService = new ProductCategoryServiceImpl();
	}

	@Override
	public Class getServletClass() {
		return ProductOffShelfServlet.class;
	}
	
	public String toView (HttpServletRequest request,HttpServletResponse response)throws Exception{

		List<ProductCategoryVo> productCategoryVoList = productCategoryService.queryAllProductCategoryList();
		request.setAttribute("productCategoryVoList", productCategoryVoList);
		return "/tgls/closeGoods";
	}
	
	public ReturnResult ProductoffShelf(HttpServletRequest request,HttpServletResponse response)throws Exception{
		ReturnResult result = new ReturnResult();
		
		String productId = request.getParameter("id");
		Integer id = 0;
		if(productId != null) {
			id = Integer.valueOf(productId).intValue();
		}
		Product product = productOffShelfService.offShelfProductById(id);
		productOffShelfService.offShelfProductAdd(product);
		productOffShelfService.productDelete(id);
		return result;
	}
	
	public ReturnResult selectOffShelfProduct(HttpServletRequest req,HttpServletResponse resp)throws Exception{
		ReturnResult result = new ReturnResult();
		req.setCharacterEncoding("utf-8");
		String page1 = req.getParameter("page");
		String pageSize = req.getParameter("limit");
		String levelStr = req.getParameter("level");
		String keyWord = req.getParameter("keyword");
		String categoryId = req.getParameter("category");
		int level=EmptyUtils.isNotEmpty(levelStr)?Integer.parseInt(levelStr):0;
		int rowPerPage = EmptyUtils.isNotEmpty(pageSize)? Integer.parseInt(pageSize):5;
		int currentPage = 1;
		if(page1 != null ||  !EmptyUtils.isEmpty(page1)) {
			currentPage = Integer.valueOf(page1).intValue();
		}

		Integer size = productOffShelfService.getOffShelfProductRowCount(categoryId, level, keyWord);
		Pager pager = new Pager(size,rowPerPage,currentPage);
		List<Product> list = productOffShelfService.offShelfProductList(pager, categoryId, level, keyWord);
		result.setData(list);
		result.setMessage("操作成功");
		result.setTotal(size.intValue());
		return result;
	}
	
	public ReturnResult delete(HttpServletRequest req,HttpServletResponse resp)throws Exception{
		ReturnResult result = new ReturnResult();
		String OffShelf = req.getParameter("id");
		Integer id = 0;
		if(OffShelf != null) {
			id = Integer.valueOf(OffShelf).intValue();
		}
		int num = productOffShelfService.offShelfProductDelete(id);
		return result;
	}
	
	public ReturnResult up(HttpServletRequest req,HttpServletResponse resp)throws Exception{
		ReturnResult result = new ReturnResult();
		String OffShelf = req.getParameter("id");
		Integer id = 0;
		if(OffShelf != null) {
			id = Integer.valueOf(OffShelf).intValue();
		}
		productOffShelfService.offShelfProductUp(id);
		productService.productUp(id);
		
		return result;
	}
}
