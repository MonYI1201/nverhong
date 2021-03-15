package com.nverhong.two.utils;

import java.io.Serializable;
import java.util.List;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.entity.product.ProductCategory;


public class ProductCategoryVo implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private ProductCategory productCategory;
	
	private List<ProductCategoryVo> productCategoryVoList;

	private List<Product> productList;
	
	

	public ProductCategory getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}

	public List<ProductCategoryVo> getProductCategoryVoList() {
		return productCategoryVoList;
	}

	public void setProductCategoryVoList(List<ProductCategoryVo> productCategoryVoList) {
		this.productCategoryVoList = productCategoryVoList;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}
}
