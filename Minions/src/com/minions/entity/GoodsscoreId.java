package com.minions.entity;

/**
 * GoodsscoreId entity. @author MyEclipse Persistence Tools
 */

public class GoodsscoreId implements java.io.Serializable {

	// Fields

	private Integer goodId;
	private Integer userId;

	// Constructors

	/** default constructor */
	public GoodsscoreId() {
	}

	/** full constructor */
	public GoodsscoreId(Integer goodId, Integer userId) {
		this.goodId = goodId;
		this.userId = userId;
	}

	// Property accessors

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

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof GoodsscoreId))
			return false;
		GoodsscoreId castOther = (GoodsscoreId) other;

		return ((this.getGoodId() == castOther.getGoodId()) || (this
				.getGoodId() != null && castOther.getGoodId() != null && this
				.getGoodId().equals(castOther.getGoodId())))
				&& ((this.getUserId() == castOther.getUserId()) || (this
						.getUserId() != null && castOther.getUserId() != null && this
						.getUserId().equals(castOther.getUserId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getGoodId() == null ? 0 : this.getGoodId().hashCode());
		result = 37 * result
				+ (getUserId() == null ? 0 : this.getUserId().hashCode());
		return result;
	}

}