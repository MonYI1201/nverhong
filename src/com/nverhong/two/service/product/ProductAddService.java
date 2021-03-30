package com.nverhong.two.service.product;

import com.nverhong.two.entity.product.Picture;

import java.util.List;
/**
 * 增加商品
 * @author MonYI
 */
public interface ProductAddService {

	/**
	 * 添加图片
	 * @param savePath
	 * @param saveUrl
	 * @param fileUrl
	 * @param type
	 * @return
	 */
	int addPictureList(String savePath,String saveUrl,String fileUrl,Integer type);
	
	/**
	 * 根据图片地址查询图片类型和图片ID
	 * @param fileUrl
	 * @return
	 */
	List<Picture> findPictureId(String fileUrl);
	
	/**
	 * 添加商品信息
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
	int addProductList(String name,String description,float price,Integer stock,Integer sell,String pid,String pid2,Integer category1, Integer category2,Integer category3);

	/**
	 * 通过id查询图片信息
	 * @param id
	 * @return
	 */
	Picture findPictureById(Integer id);
}
