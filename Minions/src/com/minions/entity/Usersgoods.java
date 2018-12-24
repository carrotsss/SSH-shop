package com.minions.entity;

import java.sql.Timestamp;

/**
 * Usersgoods entity. @author MyEclipse Persistence Tools
 */

public class Usersgoods implements java.io.Serializable {

	// Fields

	private Integer usersgoodsId;
	private Usersaddress usersaddress;
	private Users users;
	private Colors colors;
	private Goods goods;
	private Integer number;
	private Timestamp time;
	private Integer status;

	// Constructors

	/** default constructor */
	public Usersgoods() {
	}

	/** minimal constructor */
	public Usersgoods(Integer status) {
		this.status = status;
	}
	public Usersgoods(Usersaddress usersaddress, Users users, Colors colors,
			Goods goods, Integer number ) {
		this.usersaddress = usersaddress;
		this.users = users;
		this.colors = colors;
		this.goods = goods;
		this.number = number;
		this.status=0;
	}
	/** full constructor */
	public Usersgoods(Usersaddress usersaddress, Users users, Colors colors,
			Goods goods, Integer number, Timestamp time, Integer status) {
		this.usersaddress = usersaddress;
		this.users = users;
		this.colors = colors;
		this.goods = goods;
		this.number = number;
		this.time = time;
		this.status = status;
	}

	// Property accessors

	public Integer getUsersgoodsId() {
		return this.usersgoodsId;
	}

	public void setUsersgoodsId(Integer usersgoodsId) {
		this.usersgoodsId = usersgoodsId;
	}

	public Usersaddress getUsersaddress() {
		return this.usersaddress;
	}

	public void setUsersaddress(Usersaddress usersaddress) {
		this.usersaddress = usersaddress;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Colors getColors() {
		return this.colors;
	}

	public void setColors(Colors colors) {
		this.colors = colors;
	}

	public Goods getGoods() {
		return this.goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}