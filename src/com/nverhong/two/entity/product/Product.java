package com.nverhong.two.entity.product;

import java.io.Serializable;
import java.util.List;
/**
 * 商品信息实体类
 * @author MonYI
 */
public class Product implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer id; 
	private String name;
	private String description; 
	private Float price; 
	private Integer stock;
	private Integer sell;
	private Integer categoryLevel1Id;
	private Integer categoryLevel2Id;
	private Integer categoryLevel3Id;
	private String pid;
	private String pid2;
	private String categoryName;


	public Integer getSell() {
		return sell;
	}

	public void setSell(Integer sell) {
		this.sell = sell;
	}



    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

	/**
	 * 商品图片列表
	 */
	private List<Picture> picGoodsList;
	/**
	 * 品质检验
	 */
	private List<Picture> picCheckList;
	
	public String getPid2() {
		return pid2;
	}

	public void setPid2(String pid2) {
		this.pid2 = pid2;
	}

	public Product(Integer id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public Product() {
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public Integer getCategoryLevel1Id() {
		return categoryLevel1Id;
	}
	public void setCategoryLevel1Id(Integer categoryLevel1Id) {
		this.categoryLevel1Id = categoryLevel1Id;
	}
	public Integer getCategoryLevel2Id() {
		return categoryLevel2Id;
	}
	public void setCategoryLevel2Id(Integer categoryLevel2Id) {
		this.categoryLevel2Id = categoryLevel2Id;
	}
	public Integer getCategoryLevel3Id() {
		return categoryLevel3Id;
	}
	public void setCategoryLevel3Id(Integer categoryLevel3Id) {
		this.categoryLevel3Id = categoryLevel3Id;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public List<Picture> getPicGoodsList() {
		return picGoodsList;
	}

	public List<Picture> getPicCheckList() {
		return picCheckList;
	}

	public void setPicGoodsList(List<Picture> picGoodsList) {
		this.picGoodsList = picGoodsList;
	}

	public void setPicCheckList(List<Picture> picCheckList) {
		this.picCheckList = picCheckList;
	}
}
