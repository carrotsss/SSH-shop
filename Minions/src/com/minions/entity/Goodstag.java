package com.minions.entity;

/**
 * Goodstag entity. @author MyEclipse Persistence Tools
 */

public class Goodstag implements java.io.Serializable {

	// Fields

	private Integer goodstagId;
	private Tag tag;
	private Goods goods;

	// Constructors

	/** default constructor */
	public Goodstag() {
	}

	/** full constructor */
	public Goodstag(Tag tag, Goods goods) {
		this.tag = tag;
		this.goods = goods;
	}

	// Property accessors

	public Integer getGoodstagId() {
		return this.goodstagId;
	}

	public void setGoodstagId(Integer goodstagId) {
		this.goodstagId = goodstagId;
	}

	public Tag getTag() {
		return this.tag;
	}

	public void setTag(Tag tag) {
		this.tag = tag;
	}

	public Goods getGoods() {
		return this.goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

}