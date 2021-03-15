package com.nverhong.two.dao.product;

import java.util.List;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;

public interface ProductOffShelfDao {

	public Product offShelfProductById(Integer id);

	public int offShelfProductAdd(Product product);
	
	public int productDelete(Integer id);

	public int queryOffShelfProductCount(ProductParams params);

	public List<Product> queryOffShelfProductList(ProductParams params);

	public int offShelfProductDelete(Integer id);

	public int offShelfProductUp(Integer id);
}
