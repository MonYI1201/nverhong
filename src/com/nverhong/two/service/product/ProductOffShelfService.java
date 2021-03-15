package com.nverhong.two.service.product;

import java.util.List;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.utils.Pager;

public interface ProductOffShelfService {
	
	/**
	 * 查询需要下架的商品信息
	 * @param id
	 * @return
	 */
	public Product offShelfProductById(Integer id);
	
	/**
	 * 添加信息到下架表中
	 * @param product
	 * @return
	 */
	public int offShelfProductAdd(Product product);
	
	/**
	 * 将下架商品设置在原表中设为删除状态
	 * @param id
	 * @return
	 */
	public int productDelete(Integer id);
	
	/**
	 * 查询下架表
	 * @param pager
	 * @param catagory
	 * @param level
	 * @param keyWord
	 * @return
	 */
	public List<Product> offShelfProductList(Pager pager,String category,int level,String keyWord);

	/**
	 * 查询下架表数据数量
	 * @param category
	 * @param level
	 * @param keyWord
	 * @return
	 */
	public Integer getOffShelfProductRowCount(String category, int level, String keyWord);

	/**
	 * 删除下架的商品
	 * @param id
	 * @return
	 */
	public int offShelfProductDelete(Integer id);

	/**
	 * 上架商品
	 * @param id
	 * @return
	 */
	public int offShelfProductUp(Integer id);
}
