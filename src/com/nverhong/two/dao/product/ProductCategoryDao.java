package com.nverhong.two.dao.product;

import com.nverhong.two.entity.product.ProductCategory;
import com.nverhong.two.param.ProductCategoryParams;

import java.util.List;
/**
 * 商品分类dao层
 * @author MonYI
 */
public interface ProductCategoryDao {

	/**
	 * 查询分类列表
	 * @param params
	 * @return
	 */
	List<ProductCategory> queryProductCategoryList(ProductCategoryParams params);
}
