package com.minions.entity;

/**
 * Adminpower entity. @author MyEclipse Persistence Tools
 */

public class Adminpower implements java.io.Serializable {

	// Fields

	private Integer adminpowerId;
	private Admin admin;
	private Power power;

	// Constructors

	/** default constructor */
	public Adminpower() {
	}

	/** full constructor */
	public Adminpower(Admin admin, Power power) {
		this.admin = admin;
		this.power = power;
	}

	// Property accessors

	public Integer getAdminpowerId() {
		return this.adminpowerId;
	}

	public void setAdminpowerId(Integer adminpowerId) {
		this.adminpowerId = adminpowerId;
	}

	public Admin getAdmin() {
		return this.admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Power getPower() {
		return this.power;
	}

	public void setPower(Power power) {
		this.power = power;
	}

}