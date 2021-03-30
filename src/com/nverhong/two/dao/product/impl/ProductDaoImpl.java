package com.nverhong.two.dao.product.impl;

import com.nverhong.two.dao.BaseDaoImpl;
import com.nverhong.two.dao.product.ProductDao;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.utils.EmptyUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 * @author MonYI
 */
public class ProductDaoImpl extends BaseDaoImpl implements ProductDao{

	
	public ProductDaoImpl(Connection connection) {
		super(connection);
	}

	@Override
	public Product tableToClass(ResultSet rs) throws Exception {
		Product product = new Product();
		product.setId(rs.getInt("id"));
		product.setName(rs.getString("name"));
		product.setDescription(rs.getString("description"));
		product.setPrice(rs.getFloat("price"));
		product.setStock(rs.getInt("stock"));
		product.setSell(rs.getInt("sell"));
		product.setCategoryLevel1Id(rs.getInt("categoryLevel1Id"));
		product.setCategoryLevel2Id(rs.getInt("categoryLevel2Id"));
		product.setCategoryLevel3Id(rs.getInt("categoryLevel3Id"));
		product.setPid(rs.getString("pid"));
		product.setPid2(rs.getString("pid2"));
		product.setCategoryName(rs.getString("categoryName"));
		return product;
	}
	
	@Override
	public List<Product> queryProductList(ProductParams params) {
		List<Object> paramsList = new ArrayList<>();
		List<Product> productList = new ArrayList<>();
		StringBuffer sql = new StringBuffer("select a.id,a.name,a.description,a.price,a.stock,a.sell,a.pid,a.pid2,b.name as categoryName ,a.categoryLevel1Id,a.categoryLevel2Id,a.categoryLevel3Id from nverhong_product as a join nverhong_product_category as b on a.categoryLevel1Id=b.id where a.isDelete = 0 ");
		if(EmptyUtils.isNotEmpty(params.getName())){
			sql.append(" and a.name = ? ");
			paramsList.add(params.getName());
		}
		if(EmptyUtils.isNotEmpty(params.getKeyword())){
			sql.append(" and a.name like ?");
			paramsList.add("%"+params.getKeyword()+"%");
		}
		if(EmptyUtils.isNotEmpty(params.getCategoryId())){
			sql.append(" and (a.categoryLevel1Id = ? or a.categoryLevel2Id=? or a.categoryLevel3Id=? )");
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
				Product product = tableToClass(resultSet);
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

	@Override
	public List<Product> productListById(Integer id) {
		List<Product> list = new ArrayList<>();
		String sql = "select id,name,description,price,stock,sell,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,pid,pid2 from nverhong_product where id = ? ";
		Object[] params = new Object[] {id};
		ResultSet resultSet = this.executeQuery(sql, params);
		try {
			while(resultSet.next()) {
				Product product = this.tableToClass(resultSet);
				list.add(product);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; 
	}

	@Override
	public int productUpdate(Integer id ,String name,String description,float price,Integer stock,Integer sell,Integer categoryLevel1Id,Integer categoryLevel2Id,Integer categoryLevel3Id,String pid ,String pid2) {
		int result = 0;
		String sql = "update nverhong_product set name=?,description=?,price=?,stock=?,sell=?,categoryLevel1Id=?,categoryLevel2Id=?,categoryLevel3Id=? ,pid=?,pid2=? where id = ? ";
		Object[] params = new Object[] {name,description,price,stock,sell,categoryLevel1Id,categoryLevel2Id,categoryLevel3Id,pid,pid2,id};
		result = this.executeUpdate(sql, params);
		return result;
	}
	
	
}
