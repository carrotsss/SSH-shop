package com.minions.entity;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer userId;
	private String userPwd;
	private String userName;
	private String userGender;
	private String userAddress;
	private String userEmail;
	private String userTel;

	// Constructors

	/** default constructor */
	public Users() {
	}

	public Users(String userPwd, String userTel) {
		super();
		this.userPwd = userPwd;
		this.userTel = userTel;
	}

	/** full constructor */
	public Users(String userPwd, String userName, String userGender,
			String userAddress, String userEmail, String userTel) {
		this.userPwd = userPwd;
		this.userName = userName;
		this.userGender = userGender;
		this.userAddress = userAddress;
		this.userEmail = userEmail;
		this.userTel = userTel;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return this.userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserGender() {
		return this.userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserTel() {
		return this.userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

}