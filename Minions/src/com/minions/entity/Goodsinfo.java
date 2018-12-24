package com.minions.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goodsinfo implements java.io.Serializable {

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
	private int flag;
	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

	private Set goodstypes = new HashSet(0);
	private Set goodstags = new HashSet(0);
	
	private Integer brandId;
	private String brandName;
	private String brandImg;
	private Set goodses = new HashSet(0);
	private Integer colorId;
	private String color;
	private Set goodsimgs = new HashSet(0);
	private Set goodscolors = new HashSet(0);
	private Integer goodscolorId;
	private Colors colors;
	private Goods goods;
	private String goodNumber;
	private Integer goodsimgId;
	private String goodsimgImg;
	private Integer goodstagId;
	private Tag tag;
	private Integer goodstypeId;
	private Type type;
	private Integer tagId;
	private String tagName;
	private Integer typeId;
	private String typeName;
	private Integer typeParentid;

	// Constructors

	/** default constructor */

	/** full constructor */
	public Goodsinfo(String typeName, Integer typeParentid, Set goodstypes) {
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


	// Constructors

	/** default constructor */

	/** full constructor */
	public Goodsinfo(String tagName, Set goodstags) {
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


	// Constructors

	/** default constructor */

	/** full constructor */
	public Goodsinfo(Type type, Goods goods) {
		this.type = type;
		this.goods = goods;
	}

	// Property accessors

	public Integer getGoodstypeId() {
		return this.goodstypeId;
	}

	public void setGoodstypeId(Integer goodstypeId) {
		this.goodstypeId = goodstypeId;
	}

	public Type getType() {
		return this.type;
	}

	public void setType(Type type) {
		this.type = type;
	}


	// Constructors

	/** default constructor */

	/** full constructor */
	public Goodsinfo(Tag tag, Goods goods) {
		this.tag = tag;
		this.goods = goods;
	}

	// Property accessors

	public Integer getGoodstagId() {
		return this.goodstagId;
	}

	public void setGoodstagId(Integer goodstagId) {
		this.goodstagId = goodstagId;
	}

	public Tag getTag() {
		return this.tag;
	}

	public void setTag(Tag tag) {
		this.tag = tag;
	}

	// Constructors
	/** full constructor */
	public Goodsinfo(Colors colors, Goods goods, String goodsimgImg) {
		this.colors = colors;
		this.goods = goods;
		this.goodsimgImg = goodsimgImg;
	}

	// Property accessors

	public Integer getGoodsimgId() {
		return this.goodsimgId;
	}

	public void setGoodsimgId(Integer goodsimgId) {
		this.goodsimgId = goodsimgId;
	}

	

	

	public String getGoodsimgImg() {
		return this.goodsimgImg;
	}

	public void setGoodsimgImg(String goodsimgImg) {
		this.goodsimgImg = goodsimgImg;
	}
	// Constructors

	/** default constructor */

	/** full constructor */
	public Goodsinfo(Integer goodId, Integer colorId) {
		this.goodId = goodId;
		this.colorId = colorId;
	}

	// Property accessors


	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof GoodscolorId))
			return false;
		GoodscolorId castOther = (GoodscolorId) other;

		return ((this.getGoodId() == castOther.getGoodId()) || (this
				.getGoodId() != null && castOther.getGoodId() != null && this
				.getGoodId().equals(castOther.getGoodId())))
				&& ((this.getColorId() == castOther.getColorId()) || (this
						.getColorId() != null && castOther.getColorId() != null && this
						.getColorId().equals(castOther.getColorId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getGoodId() == null ? 0 : this.getGoodId().hashCode());
		result = 37 * result
				+ (getColorId() == null ? 0 : this.getColorId().hashCode());
		return result;
	}


	// Constructors

	/** default constructor */
	

	/** full constructor */
	public Goodsinfo(Colors colors, Goods goods, String goodNumber,int flag) {
		this.colors = colors;
		this.goods = goods;
		this.goodNumber = goodNumber;
	}

	// Property accessors

	public Integer getGoodscolorId() {
		return this.goodscolorId;
	}

	public void setGoodscolorId(Integer goodscolorId) {
		this.goodscolorId = goodscolorId;
	}

	public Colors getColors() {
		return this.colors;
	}

	public void setColors(Colors colors) {
		this.colors = colors;
	}

	public Goods getGoods() {
		return this.goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public String getGoodNumber() {
		return this.goodNumber;
	}

	public void setGoodNumber(String goodNumber) {
		this.goodNumber = goodNumber;
	}


	// Constructors

	/** default constructor */
	
	/** minimal constructor */
	public Goodsinfo(String color) {
		this.color = color;
	}

	/** full constructor */
	public Goodsinfo(String color, Set goodsimgs, Set goodscolors) {
		this.color = color;
		this.goodsimgs = goodsimgs;
		this.goodscolors = goodscolors;
	}

	// Property accessors

	public Integer getColorId() {
		return this.colorId;
	}

	public void setColorId(Integer colorId) {
		this.colorId = colorId;
	}

	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Set getGoodsimgs() {
		return this.goodsimgs;
	}

	public void setGoodsimgs(Set goodsimgs) {
		this.goodsimgs = goodsimgs;
	}

	public Set getGoodscolors() {
		return this.goodscolors;
	}

	public void setGoodscolors(Set goodscolors) {
		this.goodscolors = goodscolors;
	}

	// Constructors

	/** default constructor */
	

	/** minimal constructor */
	public Goodsinfo(String brandName, String brandImg) {
		this.brandName = brandName;
		this.brandImg = brandImg;
	}

	/** full constructor */
	public Goodsinfo(String brandName, String brandImg, Set goodses) {
		this.brandName = brandName;
		this.brandImg = brandImg;
		this.goodses = goodses;
	}

	// Property accessors

	public Integer getBrandId() {
		return this.brandId;
	}

	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return this.brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getBrandImg() {
		return this.brandImg;
	}

	public void setBrandImg(String brandImg) {
		this.brandImg = brandImg;
	}

	public Set getGoodses() {
		return this.goodses;
	}

	public void setGoodses(Set goodses) {
		this.goodses = goodses;
	}

	// Constructors

	/** default constructor */
	public Goodsinfo() {
	}

	/** full constructor */
	public Goodsinfo(Brand brand, String goodName, Float goodPrice,
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

}