package com.nverhong.two.service.product.impl;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.nverhong.two.dao.product.ProductCategoryDao;
import com.nverhong.two.dao.product.impl.ProductCategoryDaoImpl;
import com.nverhong.two.entity.product.ProductCategory;
import com.nverhong.two.param.ProductCategoryParams;
import com.nverhong.two.service.product.ProductCategoryService;
import com.nverhong.two.utils.DataSourceUtil;
import com.nverhong.two.utils.EmptyUtils;
import com.nverhong.two.utils.ProductCategoryVo;



public class ProductCategoryServiceImpl implements ProductCategoryService{
	@Override
	public List<ProductCategoryVo> queryAllProductCategoryList() {
		
		//查询一级分类列表
		List<ProductCategoryVo> productCategoryVo1List = new ArrayList<ProductCategoryVo>();
		//查询一级分类  根据父id查询所有子商品分类           
		List<ProductCategory> productCategoryList = getProductCategorys(0);
		//查询二级分类
		for(ProductCategory product1Category : productCategoryList) {
			//封装1级分类
			ProductCategoryVo productCategoryVo = new ProductCategoryVo();
			productCategoryVo.setProductCategory(product1Category);
			
			List<ProductCategoryVo> productCategoryVo1ChildList = new ArrayList<>();
			//根据一级分类查询二级分类,只是当前循环一级分类里的二级分类，并不是所有的二级分类
			List<ProductCategory> productCategory2List = getProductCategorys(product1Category.getId());
			for(ProductCategory productCategory2:productCategory2List) {
				ProductCategoryVo productCategoryVo2 = new ProductCategoryVo();
				productCategoryVo1ChildList.add(productCategoryVo2);
				productCategoryVo2.setProductCategory(productCategory2);
				List<ProductCategoryVo> productCategoryVo2ChildList = new ArrayList<>();
				productCategoryVo2.setProductCategoryVoList(productCategoryVo2ChildList);
				// 根据二级分类查询三级分类的列表
				List<ProductCategory> productCategory3List = getProductCategorys(productCategory2.getId());
				for(ProductCategory productCategory3 : productCategory3List) {
					ProductCategoryVo productCategoryVo3 = new ProductCategoryVo();
					productCategoryVo3.setProductCategory(productCategory3);
					productCategoryVo2ChildList.add(productCategoryVo3);
				}
			}
			productCategoryVo.setProductCategoryVoList(productCategoryVo1ChildList);
			productCategoryVo1List.add(productCategoryVo);
		}
		return productCategoryVo1List;
		
	}
	
	/**
	 * 查询子分类
	 * 形参parentId，根据父ID查询所有子商品 分类 
	 * @param parentId
	 * @return
	 */
	private List<ProductCategory> getProductCategorys(Integer parentId){
		Connection connection = null;
		List<ProductCategory> productCategoryList = new ArrayList<>();

		try {
			connection = DataSourceUtil.openConnection();
			ProductCategoryDao productCategoryDao = new ProductCategoryDaoImpl(connection);
			ProductCategoryParams params = new ProductCategoryParams();
			if(EmptyUtils.isNotEmpty(parentId)) {
				params.setParentId(parentId);
			}else {
				params.setParentId(0);
			}
			
			productCategoryList = productCategoryDao.queryProductCategoryList(params);
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			DataSourceUtil.closeConnection(connection);
		}
		return productCategoryList;
		
	}
}
