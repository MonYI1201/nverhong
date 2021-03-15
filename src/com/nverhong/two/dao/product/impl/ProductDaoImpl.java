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
	
	@Override
	public List<Product> queryProductList(ProductParams params) throws Exception {
		List<Object> paramsList = new ArrayList<>();
		List<Product> productList = new ArrayList<>();
		StringBuffer sql = new StringBuffer("select id,name,description,price,stock,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,fileName from nverhong_product where isDelete=0 ");
		if(EmptyUtils.isNotEmpty(params.getName())){
			sql.append(" and name = ? ");
			paramsList.add(params.getName());
		}
		if(EmptyUtils.isNotEmpty(params.getKeyword())){
			sql.append(" and name like ?");
			paramsList.add("%"+params.getKeyword()+"%");
		}
		if(EmptyUtils.isNotEmpty(params.getCategoryId())){
			sql.append(" and (categoryLevel1Id = ? or categoryLevel2Id=? or categoryLevel3Id=? )");
			paramsList.add(params.getCategoryId());
			paramsList.add(params.getCategoryId());
			paramsList.add(params.getCategoryId());
		}
		if(EmptyUtils.isNotEmpty(params.getSort())) {
			sql.append(" order by " + params.getSort() + "");
		}
		if(params.isPage()) {
			sql.append(" limit " + params.getStartIndex() + ", " + params.getPageSize());
		}
		
		System.out.println(sql.toString());
		ResultSet resultSet = this.executeQuery(sql.toString(), paramsList.toArray());
		try {
			while(resultSet.next()) {
				Product product = (Product)tableToClass(resultSet);
				productList.add(product);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			this.closeResource(resultSet);
			this.closeResource();
		}
		return productList;
	}

	@Override
	public Integer queryProductCount(ProductParams params) {
		List<Object> paramsList=new ArrayList<Object>();   
		Integer count=0;
		StringBuffer sql=new StringBuffer("select count(1) as count from nverhong_product where isDelete=0 ");
		if(EmptyUtils.isNotEmpty(params.getName())){
			sql.append(" and name = ? ");
			paramsList.add(params.getName());
		}
		if(EmptyUtils.isNotEmpty(params.getKeyword())){
			sql.append(" and name like ? ");
			paramsList.add("%"+params.getKeyword()+"%");
		}
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
	
	@Override
	public int isDeleteProductById(Product product) {
		String sql = "update nverhong_product set isDelete=1 where id = ?";
		Object[] params = new Object[] {product.getId()};
		int result = this.executeUpdate(sql, params);
		return result;
	}

	@Override
	public int productUp(Integer id) {
		String sql = "update nverhong_product set isDelete=0 where id = ?";
		Object[] params = new Object[] {id};
		int result = this.executeUpdate(sql, params);
		return result;
	}

	

}
