package com.minions.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Usersaddress entity. @author MyEclipse Persistence Tools
 */

public class Usersaddress implements java.io.Serializable {

	// Fields

	private Integer uaId;
	private Users users;
	private String uaTel;
	private String uaAddress;
	private String uaEmail;
	private Integer uaCode;
	private String uaName;
	private Set usersgoodses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Usersaddress() {
	}

	/** full constructor */
	public Usersaddress(Users users, String uaTel, String uaAddress,
			String uaEmail, Integer uaCode, String uaName, Set usersgoodses) {
		this.users = users;
		this.uaTel = uaTel;
		this.uaAddress = uaAddress;
		this.uaEmail = uaEmail;
		this.uaCode = uaCode;
		this.uaName = uaName;
		this.usersgoodses = usersgoodses;
	}

	// Property accessors

	public Integer getUaId() {
		return this.uaId;
	}

	public void setUaId(Integer uaId) {
		this.uaId = uaId;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getUaTel() {
		return this.uaTel;
	}

	public void setUaTel(String uaTel) {
		this.uaTel = uaTel;
	}

	public String getUaAddress() {
		return this.uaAddress;
	}

	public void setUaAddress(String uaAddress) {
		this.uaAddress = uaAddress;
	}

	public String getUaEmail() {
		return this.uaEmail;
	}

	public void setUaEmail(String uaEmail) {
		this.uaEmail = uaEmail;
	}

	public Integer getUaCode() {
		return this.uaCode;
	}

	public void setUaCode(Integer uaCode) {
		this.uaCode = uaCode;
	}

	public String getUaName() {
		return this.uaName;
	}

	public void setUaName(String uaName) {
		this.uaName = uaName;
	}

	public Set getUsersgoodses() {
		return this.usersgoodses;
	}

	public void setUsersgoodses(Set usersgoodses) {
		this.usersgoodses = usersgoodses;
	}

}