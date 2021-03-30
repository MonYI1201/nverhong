package com.nverhong.two.service.product.impl;

import com.nverhong.two.dao.product.ProductDao;
import com.nverhong.two.dao.product.impl.ProductDaoImpl;
import com.nverhong.two.entity.product.Product;
import com.nverhong.two.param.ProductParams;
import com.nverhong.two.service.product.ProductService;
import com.nverhong.two.utils.DataSourceUtil;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.Pager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 * @author MonYI
 */
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
	@Override
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

	@Override
	public int isDeleteProductById(Product product) {
		int result = 0;
		Connection connection = null;
			try {
				connection = DataSourceUtil.openConnection();
				ProductDao paoductDao = new ProductDaoImpl(connection);
				result = paoductDao.isDeleteProductById(product);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DataSourceUtil.closeConnection(connection);
			}
		return result;
	}

	/**
	 * 上架商品
	 * @param id
	 * @return
	 */
	@Override
	public int productUp(Integer id) {
		int result = 0;
		Connection connection = null;
			try {
				connection = DataSourceUtil.openConnection();
				ProductDao paoductDao = new ProductDaoImpl(connection);
				result = paoductDao.productUp(id);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DataSourceUtil.closeConnection(connection);
			}
		return result;
	}
	@Override
	public List<Product> productListById(Integer id) {
		List<Product> list1 = new ArrayList<>();
		Connection connection = null;
		try {
			connection = DataSourceUtil.openConnection();
			ProductDao paoductDao = new ProductDaoImpl(connection);
			list1 =paoductDao.productListById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		
		return list1;
	}
	@Override
	public int productUpdate(Integer id,String name, String description, float price, Integer stock, Integer sell,Integer categoryLevel1Id,
			Integer categoryLevel2Id, Integer categoryLevel3Id,String pid ,String pid2) {
		int result = 0;
		Connection connection = null;
		try {
			connection = DataSourceUtil.openConnection();
			ProductDao paoductDao = new ProductDaoImpl(connection);
			result =paoductDao.productUpdate(id,name, description, price, stock, sell,categoryLevel1Id, categoryLevel2Id, categoryLevel3Id,pid,pid2);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DataSourceUtil.closeConnection(connection);
		}
		return result;
	}
	
	
	
	
}
