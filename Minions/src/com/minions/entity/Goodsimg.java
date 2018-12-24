package com.minions.entity;

/**
 * Goodsimg entity. @author MyEclipse Persistence Tools
 */

public class Goodsimg implements java.io.Serializable {

	// Fields

	private Integer goodsimgId;
	private Colors colors;
	private Goods goods;
	private String goodsimgImg;
	private int similarity;

	// Constructors

	public int getSimilarity() {
		return similarity;
	}

	public void setSimilarity(int similarity) {
		this.similarity = similarity;
	}

	/** default constructor */
	public Goodsimg() {
	}

	/** full constructor */
	public Goodsimg(Colors colors, Goods goods, String goodsimgImg) {
		this.colors = colors;
		this.goods = goods;
		this.goodsimgImg = goodsimgImg;
	}

	// Property accessors

	public Integer getGoodsimgId() {
		return this.goodsimgId;
	}

	public void setGoodsimgId(Integer goodsimgId) {
		this.goodsimgId = goodsimgId;
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

	public String getGoodsimgImg() {
		return this.goodsimgImg;
	}

	public void setGoodsimgImg(String goodsimgImg) {
		this.goodsimgImg = goodsimgImg;
	}

}