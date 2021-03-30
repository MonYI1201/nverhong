package com.nverhong.two.dao.product.impl;

import com.nverhong.two.dao.BaseDaoImpl;
import com.nverhong.two.dao.product.ProductAddDao;
import com.nverhong.two.entity.product.Picture;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author MonYI
 */
public class ProductAddDaoImpl extends BaseDaoImpl implements ProductAddDao{

	public ProductAddDaoImpl(Connection connection) {
		super(connection);
	}

	@Override
	public Picture tableToClass(ResultSet rs) throws Exception {
		Picture picture = new Picture();
		picture.setId(rs.getInt("id"));
		picture.setSavePath(rs.getString("savePath"));
		picture.setSaveUrl(rs.getString("saveUrl"));
		picture.setFileUrl(rs.getString("fileUrl"));
		picture.setType(rs.getInt("type"));
		return picture;
	}

	@Override
	public int addPictureList(String savePath,String saveUrl,String fileUrl,Integer type){
		int result = 0;
		String sql = "insert into nverhong_picture (savePath,saveUrl,fileUrl,type) values (?,?,?,?)";
		Object[] params = new Object[] {savePath,saveUrl,fileUrl,type};
		result = this.executeUpdate(sql, params);
		return result;
	}
	@Override
	public List<Picture> findPictureId(String fileUrl){
		List<Picture> list = new ArrayList<>();
		String sql = "select id,type from nverhong_picture where fileUrl = ? ";
		Object[] params = new Object[] {fileUrl};
		ResultSet resultSet = this.executeQuery(sql, params);
		try {
			while(resultSet.next()) {
				Picture picture = new Picture();
				picture.setId(resultSet.getInt("id"));
				picture.setType(resultSet.getInt("type"));
				list.add(picture);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int addProductList(String name,String description,float price,Integer stock,Integer sell,String pid,String pid2,Integer category1 ,Integer category2,Integer category3) {
		int result = 0;
		String sql = "insert into nverhong_product (name,description,price,stock,sell,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,pid,pid2) values(?,?,?,?,?,?,?,?,?,?)";
		Object[] params = new Object[] {name,description,price,stock,sell,category1,category2,category3,pid,pid2};
		result = this.executeUpdate(sql, params);
		return result;
	}

	@Override
	public Picture findPictureById(Integer id) {
		Picture picture = new Picture();
		String sql = "select fileUrl from nverhong_picture where id = ?";
		Object[] params = new Object[] {id};
		ResultSet result = this.executeQuery(sql, params);
		try {
			while(result.next()) {
				picture.setFileUrl(result.getString("fileUrl"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return picture;
	}

	
	
}
