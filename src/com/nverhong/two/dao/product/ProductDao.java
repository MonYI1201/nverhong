package com.nverhong.two.dao.product;

import java.util.List;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.utils.Pager;

public interface ProductDao {

	public List<Product> queryProductList(ProductParams productParams)throws Exception;

	public Integer queryProductCount(ProductParams params)throws Exception;

}
