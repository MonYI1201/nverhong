package com.nverhong.two.dao.product;

import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;

import java.util.List;
/**
 * 商品下架dao层
 * @author MonYI
 */
public interface ProductOffShelfDao {

	/**
	 * 根据id查询商品信息
	 * @param id
	 * @return
	 */
	Product offShelfProductById(Integer id);

	/**
	 * 新增下架商品
	 * @param product
	 * @return
	 */
	int offShelfProductAdd(Product product);

	/**
	 * 根据id删除下架商品
	 * @param id
	 * @return
	 */
	int productDelete(Integer id);

	/**
	 * 查询下架商品数量
	 * @param params
	 * @return
	 */
	int queryOffShelfProductCount(ProductParams params);

	/**
	 * 查询下架商品信息并分页
	 * @param params
	 * @return
	 */
	List<Product> queryOffShelfProductList(ProductParams params);

	/**
	 *彻底删除下架商品
	 * @param id
	 * @return
	 */
	int offShelfProductDelete(Integer id);

	/**
	 * 上架商品
	 * @param id
	 * @return
	 */
	int offShelfProductUp(Integer id);
}
