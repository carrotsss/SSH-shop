package com.minions.entity;
import java.util.List;

import com.minions.entity.Goods;

public class PageGoods {
	private List<Goods> listGoods;
	private int currentPage;
	private int pageSize;
	private int totalSize;
	private int totalRows;
	public List<Goods> getListGoods() {
		return listGoods;
	}
	public void setListGoods(List<Goods> listGoods) {
		this.listGoods = listGoods;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
}
