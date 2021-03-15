package com.nverhong.two.dao.product;

import java.util.List;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.utils.Pager;

public interface ProductDao {
	
	/**
	 * 查询所有商品信息
	 */
	public List<Product> queryProductList(ProductParams productParams)throws Exception;

	/**
	 * 统计商品的数量
	 */
	public Integer queryProductCount(ProductParams params)throws Exception;

	/**
	 * 将商品设置为删除状态 前台无法看到该数据
	 */
	public int isDeleteProductById(Product product);

	public int productUp(Integer id);


}
