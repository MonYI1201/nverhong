package com.nverhong.two.controller.product;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.product.Picture;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.service.product.ProductAddService;
import com.nverhong.two.service.product.ProductCategoryService;
import com.nverhong.two.service.product.ProductService;
import com.nverhong.two.service.product.impl.ProductAddServiceImpl;
import com.nverhong.two.service.product.impl.ProductCategoryServiceImpl;
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
 * 出售中的商品控制器
 * @author MonYI
 */

@WebServlet(urlPatterns = {"/Product"}, name = "/Product")
public class ProductServlet extends AbstractServlet{

	private static final long serialVersionUID = 1L;
	
	private ProductService productService;
	private ProductCategoryService productCategoryService;
	private ProductAddService productAddService;
	private Picture picture;
	private Product product;

	@Override
	public void init() throws ServletException {
		productService = new ProductServiceImpl();
		productCategoryService = new ProductCategoryServiceImpl();
		productAddService = new ProductAddServiceImpl();
		picture = new Picture();
		product = new Product();
	}

	public String toViewFirst (HttpServletRequest request,HttpServletResponse response)throws Exception{
		return "frame";
	}


	/**
	 * 显示商品分类
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String toView (HttpServletRequest request,HttpServletResponse response)throws Exception{

		List<ProductCategoryVo> productCategoryVoList = productCategoryService.queryAllProductCategoryList();
		request.setAttribute("productCategoryVoList", productCategoryVoList);
		return "/tgls/sellingGoods";
		
	}

	/**
	 * 显示商品信息并分页
	 * @param req
	 * @param resp
	 * @return
	 * @throws Exception
	 */
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

		 for(Product product1:productList){
			  	String s = product1.getPid();
			  	String[] arr = s.split(",");
			  	List<Picture> tempPic1 = new ArrayList<>();
			  	for(int i=0  ; i< arr.length; i++){
			  		picture = productAddService.findPictureById(Integer.parseInt(arr[i]));
					tempPic1.add(picture);
				}
			  	product1.setPicGoodsList(tempPic1);
			  	result.setData(product1);
	 }
		result.returnSuccess("操作成功");
		result.setData(productList);
		result.setTotal(size.intValue());
		
		return result;
	}

	/**
	 * 删除选中商品
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
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
