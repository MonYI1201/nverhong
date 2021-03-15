package com.nverhong.two.service.product.impl;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.nverhong.two.dao.product.ProductDao;
import com.nverhong.two.dao.product.ProductOffShelfDao;
import com.nverhong.two.dao.product.impl.ProductDaoImpl;
import com.nverhong.two.dao.product.impl.ProductOffShelfDaoImpl;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.service.product.ProductOffShelfService;
import com.nverhong.two.utils.DataSourceUtil;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.Pager;

public class ProductOffShelfServiceImpl implements ProductOffShelfService {

	public Product offShelfProductById(Integer id) {
		Product product = new Product();
		Connection connection = null;
		 try {
			 connection = DataSourceUtil.openConnection();
			 ProductOffShelfDao productDao = new ProductOffShelfDaoImpl(connection);
			 product = productDao.offShelfProductById(id);
		 }catch(Exception e) {
			 e.printStackTrace();
		 }finally {
			 DataSourceUtil.closeConnection(connection);
		 }
		return product;
	}
	@Override
	public int offShelfProductAdd(Product product) {
		Connection connection = null;
		int result = 0;
		try {
			connection = DataSourceUtil.openConnection();
			ProductOffShelfDao productDao = new ProductOffShelfDaoImpl(connection);
			result = productDao.offShelfProductAdd(product);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return result;
	}
	@Override
	public int productDelete(Integer id) {
		int result = 0;
		Connection connection = null;
			try {
				connection = DataSourceUtil.openConnection();
				ProductOffShelfDao paoductDao = new ProductOffShelfDaoImpl(connection);
				result = paoductDao.productDelete(id);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DataSourceUtil.closeConnection(connection);
			}
		return result;
	}
	@Override
	public List<Product> offShelfProductList(Pager pager, String categoryId, int level, String keyWord) {
		Connection connection = null;
		List<Product> rtn = new ArrayList<>();
		try {
			connection = DataSourceUtil.openConnection();
			ProductOffShelfDao productDao = new ProductOffShelfDaoImpl(connection);
			ProductParams params = new ProductParams();
			params.openPage((pager.getCurrentPage() - 1) * pager.getRowPerPage(),pager.getRowPerPage());
			
			if(!EmptyUtils.isEmpty(categoryId)) {
			   params.setCategoryId(Integer.parseInt(categoryId));
			}
			
	        if(!EmptyUtils.isEmpty(keyWord)){
	           params.setKeyword(keyWord);
	        }
			rtn = productDao.queryOffShelfProductList(params);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return rtn;
	}
	@Override
	public Integer getOffShelfProductRowCount(String categoryId, int level, String keyWord) {
		Connection connection = null;
        int rtn = 0;
        try {
        	connection = DataSourceUtil.openConnection();
            ProductOffShelfDao productDao = new ProductOffShelfDaoImpl(connection);
            ProductParams params = new ProductParams();
            Long id = null;
            if (EmptyUtils.isNotEmpty(categoryId)) {
                id = Long.parseLong(categoryId);
                params.setCategoryId(id==0L?null:id.intValue());
            }
            if(!EmptyUtils.isEmpty(keyWord)){
            	params.setKeyword(keyWord);
            }
            rtn = productDao.queryOffShelfProductCount(params);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
        	DataSourceUtil.closeConnection(connection);
        }
        return rtn;
	}
	@Override
	public int offShelfProductDelete(Integer id) {
		int result = 0;
		Connection connection = null;
			try {
				connection = DataSourceUtil.openConnection();
				ProductOffShelfDao paoductDao = new ProductOffShelfDaoImpl(connection);
				result = paoductDao.offShelfProductDelete(id);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DataSourceUtil.closeConnection(connection);
			}
		return result;
	}
	@Override
	public int offShelfProductUp(Integer id) {
		int result = 0;
		Connection connection = null;
			try {
				connection = DataSourceUtil.openConnection();
				ProductOffShelfDao paoductDao = new ProductOffShelfDaoImpl(connection);
				result = paoductDao.offShelfProductUp(id);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DataSourceUtil.closeConnection(connection);
			}
		return result;
	}
}
