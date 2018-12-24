package com.minions.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Tag entity. @author MyEclipse Persistence Tools
 */

public class Tag implements java.io.Serializable {

	// Fields

	private Integer tagId;
	private String tagName;
	private Set goodstags = new HashSet(0);

	// Constructors

	/** default constructor */
	public Tag() {
	}

	/** full constructor */
	public Tag(String tagName, Set goodstags) {
		this.tagName = tagName;
		this.goodstags = goodstags;
	}

	// Property accessors

	public Integer getTagId() {
		return this.tagId;
	}

	public void setTagId(Integer tagId) {
		this.tagId = tagId;
	}

	public String getTagName() {
		return this.tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public Set getGoodstags() {
		return this.goodstags;
	}

	public void setGoodstags(Set goodstags) {
		this.goodstags = goodstags;
	}

}