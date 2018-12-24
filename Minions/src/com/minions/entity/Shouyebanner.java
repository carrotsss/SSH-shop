package com.minions.entity;

/**
 * Shouyebanner entity. @author MyEclipse Persistence Tools
 */

public class Shouyebanner implements java.io.Serializable {

	// Fields

	private Integer shouyebannerId;
	private String shouyebanerImg;
	private String shouyebannerContent;
	private String shouyebannerType;

	// Constructors

	/** default constructor */
	public Shouyebanner() {
	}

	/** full constructor */
	public Shouyebanner(String shouyebanerImg, String shouyebannerContent,
			String shouyebannerType) {
		this.shouyebanerImg = shouyebanerImg;
		this.shouyebannerContent = shouyebannerContent;
		this.shouyebannerType = shouyebannerType;
	}

	// Property accessors

	public Integer getShouyebannerId() {
		return this.shouyebannerId;
	}

	public void setShouyebannerId(Integer shouyebannerId) {
		this.shouyebannerId = shouyebannerId;
	}

	public String getShouyebanerImg() {
		return this.shouyebanerImg;
	}

	public void setShouyebanerImg(String shouyebanerImg) {
		this.shouyebanerImg = shouyebanerImg;
	}

	public String getShouyebannerContent() {
		return this.shouyebannerContent;
	}

	public void setShouyebannerContent(String shouyebannerContent) {
		this.shouyebannerContent = shouyebannerContent;
	}

	public String getShouyebannerType() {
		return this.shouyebannerType;
	}

	public void setShouyebannerType(String shouyebannerType) {
		this.shouyebannerType = shouyebannerType;
	}

}