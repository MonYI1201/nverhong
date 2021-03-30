package com.nverhong.two.dao.product;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;

import java.util.List;
/**
 * 商品信息dao层
 * @author MonYI
 */
public interface ProductDao {
	
	/**
	 * 查询所有商品信息
	 * @param productParams
	 * @return
	 */
	List<Product> queryProductList(ProductParams productParams);

	/**
	 * 统计商品的数量
	 * @param params
	 * @return
	 */
	Integer queryProductCount(ProductParams params);

	/**
	 * 将商品设置为删除状态 前台无法看到该数据
	 * @param product
	 * @return
	 */
	int isDeleteProductById(Product product);

	/**
	 * 下架
	 * @param id
	 * @return
	 */
	int productUp(Integer id);

	/**
	 *根据id查询商品信息
	 * @param id
	 * @return
	 */
	List<Product> productListById(Integer id);

	/**
	 * 修改商品
	 * @param id
	 * @param name
	 * @param description
	 * @param price
	 * @param stock
	 * @param sell
	 * @param categoryLevel1Id
	 * @param categoryLevel2Id
	 * @param categoryLevel3Id
	 * @param pid
	 * @param pid2
	 * @return
	 */
	int productUpdate(Integer id,String name,String description,float price,Integer stock,Integer sell,Integer categoryLevel1Id,Integer categoryLevel2Id,Integer categoryLevel3Id,String pid ,String pid2);
	
}
