package com.nverhong.two.dao.product.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nverhong.two.dao.BaseDaoImpl;
import com.nverhong.two.dao.product.ProductDao;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.utils.EmptyUtils;

public class ProductDaoImpl extends BaseDaoImpl implements ProductDao{

	
	public ProductDaoImpl(Connection connection) {
		super(connection);
	}

	@Override
	public List<Product> queryProductList(ProductParams params) throws Exception {
		List<Object> paramsList = new ArrayList<>();
		List<Product> newsList = new ArrayList<>();
		StringBuffer sql = new StringBuffer("select id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName from nverhong_product where 1=1 ");
		if(EmptyUtils.isNotEmpty(params.getKeyword())){
			sql.append(" and tilte like ?");
			paramsList.add(params.getKeyword());
		}
		if(EmptyUtils.isNotEmpty(params.getSort())) {
			sql.append(" order by " + params.getSort() + "");
		}
		if(params.isPage()) {
			sql.append(" limit " + params.getStartIndex() + ", " + params.getPageSize());
		}
		System.out.println(sql.toString());
		ResultSet resultSet = this.executeQuery(sql.toString(), paramsList.toArray());
//		String sql = "select id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName from nverhong_product limit ?,? ";
//		Object[] param = new Object[] {params.getStartIndex(),params.getPageSize()};
//		ResultSet resultSet = this.executeQuery(sql, param);
		try {
			while(resultSet.next()) {
				Product news = (Product)tableToClass(resultSet);
				newsList.add(news);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			this.closeResource(resultSet);
			this.closeResource();
		}
		return newsList;
	}

	@Override
	public Integer queryProductCount(ProductParams params) {
		List<Object> paramsList=new ArrayList<Object>();   
		Integer count=0;
		StringBuffer sql=new StringBuffer("select count(1) as count from nverhong_product where 1=1 ");
		if(EmptyUtils.isNotEmpty(params.getName())){
			sql.append(" and name = ? ");
			paramsList.add(params.getName());
		}
		if(EmptyUtils.isNotEmpty(params.getKeyword())){
			sql.append(" and name like ? ");
			paramsList.add("%"+params.getKeyword()+"%");
		}
		System.out.println(sql.toString());
		
		ResultSet resultSet = this.executeQuery(sql.toString(),paramsList.toArray());
		try {
			while (resultSet.next()) {
				count=resultSet.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.closeResource(resultSet);
			this.closeResource();
		}
		return count;
	}
	
	public Product tableToClass(ResultSet rs) throws Exception {
		Product product = new Product();
		product.setId(rs.getInt("id"));
		product.setName(rs.getString("name"));
		product.setDescription(rs.getString("description"));
		product.setPrice(rs.getFloat("price"));
		product.setStock(rs.getInt("stock"));
		product.setCategoryLevel1Id(rs.getInt("categoryLevel1Id"));
		product.setCategoryLevel2Id(rs.getInt("categoryLevel2Id"));
		product.setCategoryLevel3Id(rs.getInt("categoryLevel3Id"));
		product.setFileName(rs.getString("fileName"));
		return product;
	}

	


}
