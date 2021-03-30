package com.nverhong.two.service.product.impl;

import com.nverhong.two.dao.product.ProductAddDao;
import com.nverhong.two.dao.product.impl.ProductAddDaoImpl;
import com.nverhong.two.entity.product.Picture;
import com.nverhong.two.service.product.ProductAddService;
import com.nverhong.two.utils.DataSourceUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author MonYI
 */
public class ProductAddServiceImpl implements ProductAddService{

	@Override
	public int addPictureList(String savePath,String saveUrl,String fileUrl,Integer type){
		Connection connection = null;
		int result = 0;
		try {
			connection = DataSourceUtil.openConnection();
			ProductAddDao pictureDao = new ProductAddDaoImpl(connection);
			result = pictureDao.addPictureList(savePath, saveUrl, fileUrl,type);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return result;
	}
	@Override
	public List<Picture> findPictureId(String fileUrl){
		List<Picture> list = new ArrayList<>();
		Connection connection = null;
		try {
			connection = DataSourceUtil.openConnection();
			ProductAddDao pictureDao = new ProductAddDaoImpl(connection);
			list = pictureDao.findPictureId(fileUrl);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return list;
	}
	@Override
	public int addProductList(String name,String description,float price,Integer stock,Integer sell,String pid,String pid2, Integer category1 ,Integer category2,Integer category3) {
		int result = 0;
		Connection connection = null;
		try {
			connection = DataSourceUtil.openConnection();
			ProductAddDao pictureDao = new ProductAddDaoImpl(connection);
			result = pictureDao.addProductList(name,description, price, stock, sell,pid,pid2,category1,category2,category3);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return result;
	}
	@Override
	public Picture findPictureById(Integer id) {
		Picture picture = null;
		Connection connection = null;
		try {
			connection = DataSourceUtil.openConnection();
			ProductAddDao pictureDao = new ProductAddDaoImpl(connection);
			picture = pictureDao.findPictureById(id);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return picture;
	}

	
	
}
