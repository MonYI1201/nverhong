package com.nverhong.two.utils;

import java.io.Serializable;

/**
 * 分页
 * @author MonYI
 */
public class Pager implements Serializable{
	


	private static final long serialVersionUID = 1L;
	
	private int currentPage;
	private int rowCount; 
	private int rowPerPage; 
	private int pageCount; 
	
	private String url;

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public int getRowPerPage() {
		return rowPerPage;
	}

	public void setRowPerPage(int rowPerPage) {
		this.rowPerPage = rowPerPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int count) {
		this.pageCount = count;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	
	public Pager(int rowCount,int rowPerPage,int currentPage) {
		this.rowCount = rowCount; 
		this.rowPerPage = rowPerPage; 
		this.currentPage = currentPage; 
		
		if(this.rowCount % this.rowPerPage == 0) {
			this.pageCount = this.rowCount / this.rowPerPage;
		}else if(this.rowCount % this.rowPerPage > 0) {
			this.pageCount = this.rowCount / this.rowPerPage + 1;
		}else {
			this.pageCount = 0;
		}
	}
	
	public Pager() {
		
	}
}
