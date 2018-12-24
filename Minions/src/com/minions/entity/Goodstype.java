package com.minions.entity;

/**
 * Goodstype entity. @author MyEclipse Persistence Tools
 */

public class Goodstype implements java.io.Serializable {

	// Fields

	private Integer goodstypeId;
	private Type type;
	private Goods goods;

	// Constructors

	/** default constructor */
	public Goodstype() {
	}

	/** full constructor */
	public Goodstype(Type type, Goods goods) {
		this.type = type;
		this.goods = goods;
	}

	// Property accessors

	public Integer getGoodstypeId() {
		return this.goodstypeId;
	}

	public void setGoodstypeId(Integer goodstypeId) {
		this.goodstypeId = goodstypeId;
	}

	public Type getType() {
		return this.type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public Goods getGoods() {
		return this.goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

}