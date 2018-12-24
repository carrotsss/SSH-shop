package com.minions.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Brand entity. @author MyEclipse Persistence Tools
 */

public class Brand implements java.io.Serializable {

	// Fields

	private Integer brandId;
	private String brandName;
	private String brandImg;
	private Set goodses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Brand() {
	}

	/** minimal constructor */
	public Brand(String brandName, String brandImg) {
		this.brandName = brandName;
		this.brandImg = brandImg;
	}

	/** full constructor */
	public Brand(String brandName, String brandImg, Set goodses) {
		this.brandName = brandName;
		this.brandImg = brandImg;
		this.goodses = goodses;
	}

	// Property accessors

	public Integer getBrandId() {
		return this.brandId;
	}

	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return this.brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getBrandImg() {
		return this.brandImg;
	}

	public void setBrandImg(String brandImg) {
		this.brandImg = brandImg;
	}

	public Set getGoodses() {
		return this.goodses;
	}

	public void setGoodses(Set goodses) {
		this.goodses = goodses;
	}

}