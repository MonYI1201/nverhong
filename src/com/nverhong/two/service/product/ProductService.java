package com.nverhong.two.service.product;

import java.util.List;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.utils.Pager;

public interface ProductService {

	public List<Product> getAllProduct(Pager pager,String catagory,int level,String keyWord);

	public int getProductRowCount(String categoryId, int level, String keyWord);
}
