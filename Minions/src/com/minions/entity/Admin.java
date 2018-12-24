package com.minions.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	private Integer adminId;
	private String adminName;
	private String adminPwd;
	private Integer adminType;
	private Set adminpowers = new HashSet(0);

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** full constructor */
	public Admin(String adminName, String adminPwd, Integer adminType,
			Set adminpowers) {
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.adminType = adminType;
		this.adminpowers = adminpowers;
	}

	// Property accessors

	public Integer getAdminId() {
		return this.adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return this.adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPwd() {
		return this.adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public Integer getAdminType() {
		return this.adminType;
	}

	public void setAdminType(Integer adminType) {
		this.adminType = adminType;
	}

	public Set getAdminpowers() {
		return this.adminpowers;
	}

	public void setAdminpowers(Set adminpowers) {
		this.adminpowers = adminpowers;
	}

}