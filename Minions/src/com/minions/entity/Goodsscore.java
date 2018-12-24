package com.minions.entity;

/**
 * Goodsscore entity. @author MyEclipse Persistence Tools
 */

public class Goodsscore implements java.io.Serializable {

	// Fields

	private Integer goodsscoreId;
	private Integer goodId;
	private Integer userId;
	private Integer goodsscoreScore;

	// Constructors

	/** default constructor */
	public Goodsscore() {
	}

	/** full constructor */
	public Goodsscore(Integer goodId, Integer userId, Integer goodsscoreScore) {
		this.goodId = goodId;
		this.userId = userId;
		this.goodsscoreScore = goodsscoreScore;
	}

	// Property accessors

	public Integer getGoodsscoreId() {
		return this.goodsscoreId;
	}

	public void setGoodsscoreId(Integer goodsscoreId) {
		this.goodsscoreId = goodsscoreId;
	}

	public Integer getGoodId() {
		return this.goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getGoodsscoreScore() {
		return this.goodsscoreScore;
	}

	public void setGoodsscoreScore(Integer goodsscoreScore) {
		this.goodsscoreScore = goodsscoreScore;
	}

}