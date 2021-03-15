package com.nverhong.two.dao.product;

import java.util.List;

import com.nverhong.two.entity.product.ProductCategory;
import com.nverhong.two.param.ProductCategoryParams;

public interface ProductCategoryDao {

	public List<ProductCategory> queryProductCategoryList(ProductCategoryParams params);
}
