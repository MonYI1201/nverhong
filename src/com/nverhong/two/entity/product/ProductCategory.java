package com.nverhong.two.entity.product;

import java.io.Serializable;

/**
 * 商品分类实体类
 * @author MonYI
 */
public class ProductCategory implements Serializable{

	private static final long serialVersionUID = 1L;

	private Integer id;
	private String name; 
	private Integer parentId; 
	private Integer type; 
	private String iconClass; 
	
	private String parentName; 

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

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getIconClass() {
		return iconClass;
	}

	public void setIconClass(String iconClass) {
		this.iconClass = iconClass;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}
	
	
}
