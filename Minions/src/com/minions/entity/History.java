package com.minions.entity;

/**
 * History entity. @author MyEclipse Persistence Tools
 */

public class History implements java.io.Serializable {

	// Fields

	private Integer historyId;
	private Users users;
	private Goods goods;

	// Constructors

	/** default constructor */
	public History() {
	}

	/** full constructor */
	public History(Users users, Goods goods) {
		this.users = users;
		this.goods = goods;
	}

	// Property accessors

	public Integer getHistoryId() {
		return this.historyId;
	}

	public void setHistoryId(Integer historyId) {
		this.historyId = historyId;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Goods getGoods() {
		return this.goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

}