package com.minions.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Power entity. @author MyEclipse Persistence Tools
 */

public class Power implements java.io.Serializable {

	// Fields

	private Integer powerId;
	private String powerName;
	private String powerType;
	private Set adminpowers = new HashSet(0);

	// Constructors

	/** default constructor */
	public Power() {
	}

	/** full constructor */
	public Power(String powerName, String powerType, Set adminpowers) {
		this.powerName = powerName;
		this.powerType = powerType;
		this.adminpowers = adminpowers;
	}

	// Property accessors

	public Integer getPowerId() {
		return this.powerId;
	}

	public void setPowerId(Integer powerId) {
		this.powerId = powerId;
	}

	public String getPowerName() {
		return this.powerName;
	}

	public void setPowerName(String powerName) {
		this.powerName = powerName;
	}

	public String getPowerType() {
		return this.powerType;
	}

	public void setPowerType(String powerType) {
		this.powerType = powerType;
	}

	public Set getAdminpowers() {
		return this.adminpowers;
	}

	public void setAdminpowers(Set adminpowers) {
		this.adminpowers = adminpowers;
	}

}