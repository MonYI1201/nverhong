package com.nverhong.two.service.product;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.utils.Pager;

import java.util.List;

/**
 * 出售商品
 * @author MonYI
 */
public interface ProductService {

	/**
	 * 查询所有商品信息
	 * @param pager
	 * @param catagory
	 * @param level
	 * @param keyWord
	 * @return
	 */
	List<Product> getAllProduct(Pager pager,String catagory,int level,String keyWord);

	/**
	 * 统计商品的数量
	 * @param categoryId
	 * @param level
	 * @param keyWord
	 * @return
	 */
	int getProductRowCount(String categoryId, int level, String keyWord);
	
	/**
	 * 将商品设置为删除状态 前台无法看到该数据
	 * @param product
	 * @return
	 */
	int isDeleteProductById(Product product);

	/**
	 * 上架商品
	 * @param id
	 */
	int productUp(Integer id);

	/**
	 * 通过id查询商品信息
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
	 * @return
	 */
	int productUpdate(Integer id,String name,String description,float price,Integer stock,Integer sell,Integer categoryLevel1Id,Integer categoryLevel2Id,Integer categoryLevel3Id,String pid ,String pid2);
}
