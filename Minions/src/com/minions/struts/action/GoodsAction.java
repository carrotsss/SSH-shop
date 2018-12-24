package com.minions.struts.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.minions.biz.ColorBiz;
import com.minions.biz.GoodsBiz;
import com.minions.entity.Colors;
import com.minions.entity.Goods;
import com.minions.entity.Goodscolor;
import com.minions.entity.Goodsimg;
import com.minions.entity.Goodstag;
import com.minions.entity.History;
import com.minions.entity.Tag;
import com.minions.entity.Users;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsAction extends ActionSupport {
	private Integer goodId;
	private Integer colorId;
	
	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public Integer getColorId() {
		return colorId;
	}

	public void setColorId(Integer colorId) {
		this.colorId = colorId;
	}

	GoodsBiz goodsBiz;
	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}
	
	ColorBiz colorBiz;
	public void setColorBiz(ColorBiz colorBiz) {
		this.colorBiz = colorBiz;
	}

	public String getGoods(){
		Goods goods = goodsBiz.findGoodsById(goodId);
//		Colors color = colorBiz.findColorById(colorId);
		String goodsNumber = goodsBiz.findGoodsNumber(goodId, colorId);
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		session.put("goods", goods);
		session.put("goodsNumber", goodsNumber);
		session.put("brand", goods.getBrand());

//		相关分类
		List<Tag> tagList = new ArrayList<Tag>();
		for (Object gt : goods.getGoodstags()) {
			if(tagList.size()>6)
				break;
			tagList.add(((Goodstag)gt).getTag());
		}
		session.put("tagList", tagList);
		
//		图片
		List<Goodsimg> imgLlist = goodsBiz.findAllGoodsimg(goods);
		List<Goodsimg> imgList = new ArrayList<Goodsimg>();
		for (Goodsimg img : imgLlist) {
			if(img.getColors().getColorId()!=1000)
				imgList.add(img);
		}
		session.put("goodsImg", imgList);
		Colors color =((Goodsimg) imgList.get(0)).getColors();
		session.put("color", color);
		
		Goodsimg goodsImg = goodsBiz.findMaxGoodsimg(goods);
		session.put("maxImg", goodsImg);
		
		List<Goodsimg> listImg = new ArrayList<Goodsimg>();
		listImg.add(goodsImg);
		List<Goodsimg> list = goodsBiz.findGoodsimg(goods);
		for (Goodsimg img : list) {
			listImg.add(img);
		}
		session.put("listImg", listImg);
		
//		历史浏览记录
//		Users users = (Users) session.get("user");
//		List<History> historyList = goodsBiz.findHistoryByUsers(users);
//		session.put("historyList", historyList);
//		List<History> history = goodsBiz.findHistoryByUsers(users,goods);
//		if(history.size()<=0){
//			goodsBiz.insertHistory(users,goods);
//		}
		String goodsContent=this.html(goods.getGoodContent());
		session.put("goodsContent",goodsContent);
//		System.out.println("goodsContent:"+goodsContent);
//		session.put("goodsContent",this.html(goods.getGoodContent()));
		return "goodsInformation";
	}
	
	private String html(String str) {
		str = str.replaceAll("&amp;", "&");
		str = str.replaceAll("&lt;", "<");
		str = str.replaceAll("&gt;", ">");
		str = str.replaceAll("&quot;", "\"");
		return str;
	}
}
