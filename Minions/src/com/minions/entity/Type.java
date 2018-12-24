package com.minions.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Type entity. @author MyEclipse Persistence Tools
 */

public class Type implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeName;
	private Integer typeParentid;
	private Set goodstypes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Type() {
	}

	/** full constructor */
	public Type(String typeName, Integer typeParentid, Set goodstypes) {
		this.typeName = typeName;
		this.typeParentid = typeParentid;
		this.goodstypes = goodstypes;
	}

	// Property accessors

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getTypeParentid() {
		return this.typeParentid;
	}

	public void setTypeParentid(Integer typeParentid) {
		this.typeParentid = typeParentid;
	}

	public Set getGoodstypes() {
		return this.goodstypes;
	}

	public void setGoodstypes(Set goodstypes) {
		this.goodstypes = goodstypes;
	}

}