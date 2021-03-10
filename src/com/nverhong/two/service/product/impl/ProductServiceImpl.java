package com.nverhong.two.service.product.impl;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.nverhong.two.dao.product.ProductDao;
import com.nverhong.two.dao.product.impl.ProductDaoImpl;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.service.product.ProductService;
import com.nverhong.two.utils.DataSourceUtil;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.Pager;

public class ProductServiceImpl implements ProductService{

	@Override
	public List<Product> getAllProduct(Pager pager,String categoryId,int level,String keyWord) {
		Connection connection = null;
		List<Product> rtn = new ArrayList<>();
		try {
			connection = DataSourceUtil.openConnection();
			ProductDao productDao = new ProductDaoImpl(connection);
			ProductParams params = new ProductParams();
			params.openPage((pager.getCurrentPage() - 1) * pager.getRowPerPage(),pager.getRowPerPage());
			
			if(!EmptyUtils.isEmpty(categoryId)) {
			   params.setCategoryId(Integer.parseInt(categoryId));
			}
			
	        if(!EmptyUtils.isEmpty(keyWord)){
	           params.setKeyword(keyWord);
	        }
			rtn = productDao.queryProductList(params);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return rtn;
	}
	public int getProductRowCount(String categoryId, int level, String keyWord) {
		Connection connection = null;
        int rtn = 0;
        try {
        	connection = DataSourceUtil.openConnection();
            ProductDao productDao = new ProductDaoImpl(connection);
            ProductParams params = new ProductParams();
            Long id = null;
            if (EmptyUtils.isNotEmpty(categoryId)) {
                id = Long.parseLong(categoryId);
                params.setCategoryId(id==0L?null:id.intValue());
            }
            if(!EmptyUtils.isEmpty(keyWord)){
            	params.setKeyword(keyWord);
            }
            rtn = productDao.queryProductCount(params);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
        	DataSourceUtil.closeConnection(connection);
        }
        return rtn;
	}

	
}
