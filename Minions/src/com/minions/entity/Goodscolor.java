package com.minions.entity;

/**
 * Goodscolor entity. @author MyEclipse Persistence Tools
 */

public class Goodscolor implements java.io.Serializable {

	// Fields

	private Integer goodscolorId;
	private Colors colors;
	private Goods goods;
	private String goodNumber;

	// Constructors

	/** default constructor */
	public Goodscolor() {
	}

	/** full constructor */
	public Goodscolor(Colors colors, Goods goods, String goodNumber) {
		this.colors = colors;
		this.goods = goods;
		this.goodNumber = goodNumber;
	}

	// Property accessors

	public Integer getGoodscolorId() {
		return this.goodscolorId;
	}

	public void setGoodscolorId(Integer goodscolorId) {
		this.goodscolorId = goodscolorId;
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

	public String getGoodNumber() {
		return this.goodNumber;
	}

	public void setGoodNumber(String goodNumber) {
		this.goodNumber = goodNumber;
	}

}