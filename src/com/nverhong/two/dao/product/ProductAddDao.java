package com.nverhong.two.dao.product;

import com.nverhong.two.entity.product.Picture;

import java.util.List;
/**
 * 商品添加dao层
 * @author MonYI
 */
public interface ProductAddDao {

	/**
	 * 增加图片
	 * @param savePath
	 * @param saveUrl
	 * @param fileUrl
	 * @param type
	 * @return
	 */
	int addPictureList(String savePath,String saveUrl,String fileUrl,Integer type);

	/**
	 * 根据图片地址查询图片id
	 * @param fileUrl
	 * @return
	 */
	List<Picture> findPictureId(String fileUrl);

	/**
	 * 增加商品信息
	 * @param name
	 * @param description
	 * @param price
	 * @param stock
	 * @param pid
	 * @param pid2
	 * @param category1
	 * @param category2
	 * @param category3
	 * @return
	 */
	int addProductList(String name,String description,float price,Integer stock,Integer sell,String pid,String pid2,Integer category1 ,Integer category2,Integer category3);

	/**
	 * 通过id查找图片
	 * @param id
	 * @return
	 */
	Picture findPictureById(Integer id);
}
