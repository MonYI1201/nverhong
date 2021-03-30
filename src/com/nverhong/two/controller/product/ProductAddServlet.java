package com.nverhong.two.controller.product;

import com.nverhong.two.controller.AbstractServlet;
import com.nverhong.two.entity.product.Picture;
import com.nverhong.two.service.product.ProductAddService;
import com.nverhong.two.service.product.ProductCategoryService;
import com.nverhong.two.service.product.impl.ProductAddServiceImpl;
import com.nverhong.two.service.product.impl.ProductCategoryServiceImpl;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.ProductCategoryVo;
import com.nverhong.two.utils.ReturnResult;
import com.nverhong.two.utils.UploadUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 商品添加控制器
 * @author MonYI
 */

@WebServlet(urlPatterns = {"/ProductAdd"},name="/ProductAdd")
public class ProductAddServlet extends AbstractServlet{

	private static final long serialVersionUID = 1L;
	private ProductAddService pictureService;
	private ProductCategoryService productCategoryService;

	@Override
	public Class getServletClass() {
		return ProductAddServlet.class;
	}

	@Override
	public void init() throws ServletException {
		pictureService = new ProductAddServiceImpl();
		productCategoryService = new ProductCategoryServiceImpl();
	}

	public String toView (HttpServletRequest request,HttpServletResponse response)throws Exception{
		List<ProductCategoryVo> productCategoryVoList = productCategoryService.queryAllProductCategoryList();
		request.setAttribute("productCategoryVoList", productCategoryVoList);
		return "/tgls/addGoods";
	}

	/**
	 * 商品图片上传
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ReturnResult productPictureAdd(HttpServletRequest request,HttpServletResponse response)throws Exception{
		ReturnResult result = new ReturnResult();
		UploadUtils upl = new UploadUtils();
		upl.setSavePath("E:/GitUp/nverhong/WebRoot/" + upl.getBasePath() + "/");
		String[] result1 = upl.uploadFile(request);
		for(int i = 0; i < result1.length ; i++){
			System.out.println(result1[i]);
		}
		System.out.println(result1[2]);
		System.out.println(result1[3]);
		System.out.println(result1[4]);
		pictureService.addPictureList(result1[2], result1[3], result1[4],1);

		List<Picture> list = pictureService.findPictureId(result1[4]);
		result.setData(list);
		result.setMessage("上传成功");
		return result;
	}

	/*public ReturnResult textareaPictureAdd(HttpServletRequest request,HttpServletResponse response)throws Exception{
		ReturnResult result = new ReturnResult();
		UploadUtils upl = new UploadUtils();
		upl.setSavePath("E:/GitUp/nverhong/WebRoot/" + upl.getBasePath() + "/");
		String[] result1 = upl.uploadFile(request);
		pictureService.addPictureList(result1[2], result1[3], result1[4],3);
		result.setMessage("上传成功");
		return result;
	}*/

	/**
	 * 品质检验图片上传
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ReturnResult pzjyPictureAdd(HttpServletRequest request,HttpServletResponse response)throws Exception{
		ReturnResult result = new ReturnResult();
		UploadUtils upl = new UploadUtils();
		upl.setSavePath("E:/GitUp/nverhong/WebRoot/" + upl.getBasePath() + "/");
		String[] result1 = upl.uploadFile(request);
		pictureService.addPictureList(result1[2], result1[3], result1[4],2);
		List<Picture> list = pictureService.findPictureId(result1[4]);
		result.setData(list);
		result.setMessage("上传成功");
		return result;
	}
	
	public ReturnResult productMessage(HttpServletRequest request,HttpServletResponse response)throws Exception{
		ReturnResult result = new ReturnResult();
		String goodsArr = request.getParameter("goodsArr");
		String pzjyArr = request.getParameter("pzjyArr");
		String productName = request.getParameter("productName");
		String productPrice = request.getParameter("productPrice");
		String productStock = request.getParameter("productStock");
		String productSell = request.getParameter("productSell");
		String content = request.getParameter("text");
		String categorya = request.getParameter("category1");
		String categoryb = request.getParameter("category2");
		String categoryc = request.getParameter("category3");
		System.out.println(content);
		Integer price = 0; 
		Integer stock = 0;
		Integer sell = 0;
		Integer category1 = Integer.valueOf(categorya).intValue();
		Integer category2 =  Integer.valueOf(categoryb).intValue();
		Integer category3 =  Integer.valueOf(categoryc).intValue();
		
		if(productPrice != null) { 
			price =Integer.valueOf(productPrice).intValue(); 
		}
		if(productStock != null) {
			stock= Integer.valueOf(productStock).intValue(); 
		}
		if(!EmptyUtils.isEmpty(productStock) || productSell!= null){
			sell = Integer.parseInt(productSell);
		}
		int num =  pictureService.addProductList(productName, content,price,stock,sell, goodsArr,pzjyArr,category1,category2,category3);

		result.setData(num);
		result.setMessage("发布成功");
		return result;

	}
}
