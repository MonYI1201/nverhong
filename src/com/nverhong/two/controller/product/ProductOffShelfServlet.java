package com.nverhong.two.controller.product;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.product.Picture;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.service.product.ProductAddService;
import com.nverhong.two.service.product.ProductCategoryService;
import com.nverhong.two.service.product.ProductOffShelfService;
import com.nverhong.two.service.product.ProductService;
import com.nverhong.two.service.product.impl.ProductAddServiceImpl;
import com.nverhong.two.service.product.impl.ProductCategoryServiceImpl;
import com.nverhong.two.service.product.impl.ProductOffShelfServiceImpl;
import com.nverhong.two.service.product.impl.ProductServiceImpl;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.Pager;
import com.nverhong.two.utils.ProductCategoryVo;
import com.nverhong.two.utils.ReturnResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * 商品下架控制器
 * @author MonYI
 */

@WebServlet(urlPatterns = {"/ProductOffShelf"},name="/ProductOffShelf")
public class ProductOffShelfServlet extends AbstractServlet{

	private static final long serialVersionUID = 1L;
	private ProductOffShelfService productOffShelfService;
	private ProductService productService;
	private ProductCategoryService productCategoryService;
	private ProductAddService productAddService;
	private Picture picture;
	private Product product;

	@Override
	public void init() throws ServletException {
		productOffShelfService = new ProductOffShelfServiceImpl();
		productService = new ProductServiceImpl();
		productCategoryService = new ProductCategoryServiceImpl();
		productAddService = new ProductAddServiceImpl();
		picture = new Picture();
		product = new Product();
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
	
	public ReturnResult productOffShelf(HttpServletRequest request,HttpServletResponse response)throws Exception{
		ReturnResult result = new ReturnResult();
		
		String productId = request.getParameter("id");
		Integer id = 0;
		if(productId != null) {
			id = Integer.parseInt(productId);
		}
		product = productOffShelfService.offShelfProductById(id);
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

		for(Product product1:list){
			String s = product1.getPid();
			String[] arr = s.split(",");
			List<Picture> tempPic1 = new ArrayList<>();
			for(int i=0  ; i< arr.length; i++){
				picture = productAddService.findPictureById(Integer.parseInt(arr[i]));
				System.out.println(picture.getFileUrl());
				tempPic1.add(picture);
			}
			product1.setPicGoodsList(tempPic1);
			result.setData(product1);
		}

		result.setData(list);
		result.setMessage("操作成功");
		result.setTotal(size.intValue());
		return result;
	}
	
	public ReturnResult delete(HttpServletRequest req,HttpServletResponse resp)throws Exception{
		ReturnResult result = new ReturnResult();
		String offShelf = req.getParameter("id");
		Integer id = 0;
		if(offShelf != null) {
			id = Integer.valueOf(offShelf).intValue();
		}
		int num = productOffShelfService.offShelfProductDelete(id);
		return result;
	}
	
	public ReturnResult up(HttpServletRequest req,HttpServletResponse resp)throws Exception{
		ReturnResult result = new ReturnResult();
		String offShelf = req.getParameter("id");
		Integer id = 0;
		if(offShelf != null) {
			id = Integer.valueOf(offShelf).intValue();
		}
		productOffShelfService.offShelfProductUp(id);
		productService.productUp(id);
		
		return result;
	}
}
