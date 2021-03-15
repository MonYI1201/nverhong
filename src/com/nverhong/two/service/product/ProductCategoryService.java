package com.nverhong.two.service.product;

import java.util.List;

import com.nverhong.two.entity.product.ProductCategory;
import com.nverhong.two.utils.ProductCategoryVo;

public interface ProductCategoryService {

	/**
	 * 查询所有商品的分类
	 * @return
	 */
	public List<ProductCategoryVo> queryAllProductCategoryList();
	
	
}
