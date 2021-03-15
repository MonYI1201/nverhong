package com.nverhong.two.dao.product.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.nverhong.two.dao.BaseDaoImpl;
import com.nverhong.two.dao.product.ProductCategoryDao;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.entity.product.ProductCategory;
import com.nverhong.two.param.ProductCategoryParams;
import com.nverhong.two.utils.EmptyUtils;

public class ProductCategoryDaoImpl extends BaseDaoImpl implements ProductCategoryDao{


	public ProductCategoryDaoImpl(Connection connection) {
		super(connection);
	}

	@Override
	public Object tableToClass(ResultSet rs) throws Exception {
		ProductCategory productCategory = new ProductCategory();
		productCategory.setId(rs.getInt("id"));
		productCategory.setName(rs.getString("name"));
		productCategory.setParentId(rs.getInt("parentId"));
		productCategory.setType(rs.getInt("type"));
		productCategory.setIconClass(rs.getString("iconClass"));
		return productCategory;
	}
	

	@Override
	public List<ProductCategory> queryProductCategoryList(ProductCategoryParams param) {
		List<Object> paramsList = new ArrayList<Object>();
		List<ProductCategory> productList = new ArrayList<>();
		StringBuffer sql = new StringBuffer("select id,name,parentId,type,iconClass from nverhong_product_category where 1=1");
		ResultSet resultSet = null;
		try {
			if(EmptyUtils.isNotEmpty(param.getName())) {
				sql.append(" and name like ?");
				paramsList.add("%" + param.getName() + "%");
			}
			if(EmptyUtils.isNotEmpty(param.getParentId())) {
				sql.append(" and parentId = ?");
				paramsList.add(param.getParentId());
			}
			if(EmptyUtils.isNotEmpty(param.getType())) {
				sql.append(" and type = ?");
				paramsList.add(param.getType());
			}
			if(param.isPage()) {
				sql.append(" limit " + param.getStartIndex() + "," + param.getPageSize());
			}
			resultSet = this.executeQuery(sql.toString(),paramsList.toArray());
			while(resultSet.next()) {
				ProductCategory productCategory =(ProductCategory) this.tableToClass(resultSet);
				productList.add(productCategory);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return productList;
	}
}
