package com.minions.entity;

import java.sql.Timestamp;

/**
 * Evalute entity. @author MyEclipse Persistence Tools
 */

public class Evalute implements java.io.Serializable {

	// Fields

	private Integer evaluteId;
	private Usersgoods usersgoods;
	private String evaluteContent;
	private Timestamp evaluteTime;

	// Constructors

	/** default constructor */
	public Evalute() {
	}

	/** minimal constructor */
	public Evalute(Timestamp evaluteTime) {
		this.evaluteTime = evaluteTime;
	}

	/** full constructor */
	public Evalute(Usersgoods usersgoods, String evaluteContent,
			Timestamp evaluteTime) {
		this.usersgoods = usersgoods;
		this.evaluteContent = evaluteContent;
		this.evaluteTime = evaluteTime;
	}

	// Property accessors

	public Integer getEvaluteId() {
		return this.evaluteId;
	}

	public void setEvaluteId(Integer evaluteId) {
		this.evaluteId = evaluteId;
	}

	public Usersgoods getUsersgoods() {
		return this.usersgoods;
	}

	public void setUsersgoods(Usersgoods usersgoods) {
		this.usersgoods = usersgoods;
	}

	public String getEvaluteContent() {
		return this.evaluteContent;
	}

	public void setEvaluteContent(String evaluteContent) {
		this.evaluteContent = evaluteContent;
	}

	public Timestamp getEvaluteTime() {
		return this.evaluteTime;
	}

	public void setEvaluteTime(Timestamp evaluteTime) {
		this.evaluteTime = evaluteTime;
	}

}