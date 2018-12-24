package com.minions.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Colors entity. @author MyEclipse Persistence Tools
 */

public class Colors implements java.io.Serializable {

	// Fields

	private Integer colorId;
	private String color;
	private Set goodsimgs = new HashSet(0);
	private Set goodscolors = new HashSet(0);

	// Constructors

	/** default constructor */
	public Colors() {
	}

	/** minimal constructor */
	public Colors(String color) {
		this.color = color;
	}

	/** full constructor */
	public Colors(String color, Set goodsimgs, Set goodscolors) {
		this.color = color;
		this.goodsimgs = goodsimgs;
		this.goodscolors = goodscolors;
	}

	// Property accessors

	public Integer getColorId() {
		return this.colorId;
	}

	public void setColorId(Integer colorId) {
		this.colorId = colorId;
	}

	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Set getGoodsimgs() {
		return this.goodsimgs;
	}

	public void setGoodsimgs(Set goodsimgs) {
		this.goodsimgs = goodsimgs;
	}

	public Set getGoodscolors() {
		return this.goodscolors;
	}

	public void setGoodscolors(Set goodscolors) {
		this.goodscolors = goodscolors;
	}

}