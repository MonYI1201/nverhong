package com.nverhong.two.controller.product;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.product.Picture;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.service.product.ProductAddService;
import com.nverhong.two.service.product.ProductService;
import com.nverhong.two.service.product.impl.ProductAddServiceImpl;
import com.nverhong.two.service.product.impl.ProductServiceImpl;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.ReturnResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
/**
 * 修改商品控制器
 * @author MonYI
 */
@WebServlet(urlPatterns = {"/ProductUpdate"}, name = "/ProductUpdate")
public class ProductUpdateServlet extends AbstractServlet {

	private static final long serialVersionUID = 1L;
	private ProductService productService;
	private ProductAddService productAddService;
	private Picture picture;

	@Override
	public Class getServletClass() {
		return ProductUpdateServlet.class;
	}

	@Override
	public void init() throws ServletException {
		productService = new ProductServiceImpl();
		productAddService = new ProductAddServiceImpl();
		picture = new Picture();
	}

	/**
	 * 显示修改的图片
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ReturnResult update(HttpServletRequest request,HttpServletResponse response)throws Exception{
		  ReturnResult result = new ReturnResult();
		  String productId = request.getParameter("id");
		  Integer id1 = Integer.valueOf(productId).intValue();
		  List<Product> list = productService.productListById(id1);

		  for(Product product1:list){
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
		  
		return result;
	}

	public ReturnResult productUpdate(HttpServletRequest request,HttpServletResponse response) throws Exception{
		ReturnResult result = new ReturnResult();
		String productId = request.getParameter("id");
		String productName = request.getParameter("productName");
		String productPrice = request.getParameter("productPrice");
		String productStock = request.getParameter("productStock");
		String productSell = request.getParameter("productSell");
		String productCategory1 = request.getParameter("category1");
		String productCategory2 = request.getParameter("category2");
		String productCategory3 = request.getParameter("category3");
		String goodsArr = request.getParameter("goodsArr");
		String pzjyArr = request.getParameter("pzjyArr");
		Integer id = 0;
		float price = 0;
		Integer stock = 0;
		Integer sell = 0;
		Integer category1 = 0;
		Integer category2 = 0;
		Integer category3 = 0;
		if (productId != null || !EmptyUtils.isEmpty(productId)){
			id = Integer.parseInt(productId);
		}
		if (productPrice != null || !EmptyUtils.isEmpty(productPrice)){
			price = (float)Integer.parseInt(productPrice);
		}
		if (productStock != null || !EmptyUtils.isEmpty(productStock)){
			stock = Integer.parseInt(productStock);
		}
		if (productSell != null || !EmptyUtils.isEmpty(productSell)){
			sell = Integer.parseInt(productSell);
		}
		if (productCategory1 != null || !EmptyUtils.isEmpty(productCategory1)){
			category1 = Integer.parseInt(productCategory1);
		}
		if (productCategory2 != null || !EmptyUtils.isEmpty(productCategory2)){
			category2 = Integer.parseInt(productCategory2);
		}
		if (productCategory3 != null || !EmptyUtils.isEmpty(productCategory3)){
			category3 = Integer.parseInt(productCategory3);
		}
		int num = productService.productUpdate(id,productName,null,price,stock,sell,category1,category2,category3,goodsArr,pzjyArr);
		result.setMessage("修改成功");
		result.setData(num);
		return result;
	}
}
