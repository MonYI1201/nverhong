package com.nverhong.two.service.product;

import java.util.List;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.utils.Pager;

public interface ProductService {

	/**
	 * 查询所有商品信息
	 * @param pager
	 * @param catagory
	 * @param level
	 * @param keyWord
	 * @return
	 */
	public List<Product> getAllProduct(Pager pager,String catagory,int level,String keyWord);

	/**
	 * 统计商品的数量
	 * @param categoryId
	 * @param level
	 * @param keyWord
	 * @return
	 */
	public int getProductRowCount(String categoryId, int level, String keyWord);
	
	/**
	 * 将商品设置为删除状态 前台无法看到该数据
	 * @param product
	 * @return
	 */
	public int isDeleteProductById(Product product);

	/**
	 * 上架商品
	 * @param id
	 */
	public int productUp(Integer id);
	
	
}
