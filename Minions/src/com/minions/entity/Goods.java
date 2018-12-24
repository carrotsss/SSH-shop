package com.minions.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private Integer goodId;
	private Brand brand;
	private String goodName;
	private Float goodPrice;
	private String goodContent;
	private Integer goodAllnumber;
	private Integer goodSalenumber;
	private Timestamp goodTime;
	private Float goodMarketprice;
	private Integer goodAvgscore;
	private Integer goodScan;
	private Set goodsimgs = new HashSet(0);
	private Set goodstypes = new HashSet(0);
	private Set goodstags = new HashSet(0);
	private Set goodscolors = new HashSet(0);

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** full constructor */
	public Goods(Brand brand, String goodName, Float goodPrice,
			String goodContent, Integer goodAllnumber, Integer goodSalenumber,
			Timestamp goodTime, Float goodMarketprice, Integer goodAvgscore,
			Integer goodScan, Set goodsimgs, Set goodstypes, Set goodstags,
			Set goodscolors) {
		this.brand = brand;
		this.goodName = goodName;
		this.goodPrice = goodPrice;
		this.goodContent = goodContent;
		this.goodAllnumber = goodAllnumber;
		this.goodSalenumber = goodSalenumber;
		this.goodTime = goodTime;
		this.goodMarketprice = goodMarketprice;
		this.goodAvgscore = goodAvgscore;
		this.goodScan = goodScan;
		this.goodsimgs = goodsimgs;
		this.goodstypes = goodstypes;
		this.goodstags = goodstags;
		this.goodscolors = goodscolors;
	}

	// Property accessors

	public Integer getGoodId() {
		return this.goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public Brand getBrand() {
		return this.brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public String getGoodName() {
		return this.goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	public Float getGoodPrice() {
		return this.goodPrice;
	}

	public void setGoodPrice(Float goodPrice) {
		this.goodPrice = goodPrice;
	}

	public String getGoodContent() {
		return this.goodContent;
	}

	public void setGoodContent(String goodContent) {
		this.goodContent = goodContent;
	}

	public Integer getGoodAllnumber() {
		return this.goodAllnumber;
	}

	public void setGoodAllnumber(Integer goodAllnumber) {
		this.goodAllnumber = goodAllnumber;
	}

	public Integer getGoodSalenumber() {
		return this.goodSalenumber;
	}

	public void setGoodSalenumber(Integer goodSalenumber) {
		this.goodSalenumber = goodSalenumber;
	}

	public Timestamp getGoodTime() {
		return this.goodTime;
	}

	public void setGoodTime(Timestamp goodTime) {
		this.goodTime = goodTime;
	}

	public Float getGoodMarketprice() {
		return this.goodMarketprice;
	}

	public void setGoodMarketprice(Float goodMarketprice) {
		this.goodMarketprice = goodMarketprice;
	}

	public Integer getGoodAvgscore() {
		return this.goodAvgscore;
	}

	public void setGoodAvgscore(Integer goodAvgscore) {
		this.goodAvgscore = goodAvgscore;
	}

	public Integer getGoodScan() {
		return this.goodScan;
	}

	public void setGoodScan(Integer goodScan) {
		this.goodScan = goodScan;
	}

	public Set getGoodsimgs() {
		return this.goodsimgs;
	}

	public void setGoodsimgs(Set goodsimgs) {
		this.goodsimgs = goodsimgs;
	}

	public Set getGoodstypes() {
		return this.goodstypes;
	}

	public void setGoodstypes(Set goodstypes) {
		this.goodstypes = goodstypes;
	}

	public Set getGoodstags() {
		return this.goodstags;
	}

	public void setGoodstags(Set goodstags) {
		this.goodstags = goodstags;
	}

	public Set getGoodscolors() {
		return this.goodscolors;
	}

	public void setGoodscolors(Set goodscolors) {
		this.goodscolors = goodscolors;
	}

}