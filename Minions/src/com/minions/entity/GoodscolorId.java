package com.minions.entity;

/**
 * GoodscolorId entity. @author MyEclipse Persistence Tools
 */

public class GoodscolorId implements java.io.Serializable {

	// Fields

	private Integer goodId;
	private Integer colorId;

	// Constructors

	/** default constructor */
	public GoodscolorId() {
	}

	/** full constructor */
	public GoodscolorId(Integer goodId, Integer colorId) {
		this.goodId = goodId;
		this.colorId = colorId;
	}

	// Property accessors

	public Integer getGoodId() {
		return this.goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public Integer getColorId() {
		return this.colorId;
	}

	public void setColorId(Integer colorId) {
		this.colorId = colorId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof GoodscolorId))
			return false;
		GoodscolorId castOther = (GoodscolorId) other;

		return ((this.getGoodId() == castOther.getGoodId()) || (this
				.getGoodId() != null && castOther.getGoodId() != null && this
				.getGoodId().equals(castOther.getGoodId())))
				&& ((this.getColorId() == castOther.getColorId()) || (this
						.getColorId() != null && castOther.getColorId() != null && this
						.getColorId().equals(castOther.getColorId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getGoodId() == null ? 0 : this.getGoodId().hashCode());
		result = 37 * result
				+ (getColorId() == null ? 0 : this.getColorId().hashCode());
		return result;
	}

}