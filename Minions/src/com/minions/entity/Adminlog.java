package com.minions.entity;

import java.sql.Timestamp;

/**
 * Adminlog entity. @author MyEclipse Persistence Tools
 */

public class Adminlog implements java.io.Serializable {

	// Fields

	private Integer adminlogId;
	private Admin admin;
	private String actionMethod;
	private String actionName;
	private Timestamp adminlogTime;

	// Constructors

	/** default constructor */
	public Adminlog() {
	}

	/** full constructor */
	public Adminlog(Admin admin, String actionMethod, String actionName,
			Timestamp adminlogTime) {
		this.admin = admin;
		this.actionMethod = actionMethod;
		this.actionName = actionName;
		this.adminlogTime = adminlogTime;
	}

	// Property accessors

	public Integer getAdminlogId() {
		return this.adminlogId;
	}

	public void setAdminlogId(Integer adminlogId) {
		this.adminlogId = adminlogId;
	}

	public Admin getAdmin() {
		return this.admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String getActionMethod() {
		return this.actionMethod;
	}

	public void setActionMethod(String actionMethod) {
		this.actionMethod = actionMethod;
	}

	public String getActionName() {
		return this.actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public Timestamp getAdminlogTime() {
		return this.adminlogTime;
	}

	public void setAdminlogTime(Timestamp adminlogTime) {
		this.adminlogTime = adminlogTime;
	}

}