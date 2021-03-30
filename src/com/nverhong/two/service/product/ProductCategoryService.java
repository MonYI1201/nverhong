package com.nverhong.two.service.product;

import com.nverhong.two.utils.ProductCategoryVo;

import java.util.List;
/**
 * 商品分类
 * @author MonYI
 */
public interface ProductCategoryService {

	/**
	 * 查询所有商品的分类
	 * @return
	 */
	List<ProductCategoryVo> queryAllProductCategoryList();
	
	
}
