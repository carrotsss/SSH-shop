package com.minions.struts.action;

import java.util.Map;

import com.minions.biz.ColorBiz;
import com.minions.biz.GoodsBiz;
import com.minions.entity.Colors;
import com.minions.entity.Goods;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsEvaluteAction extends ActionSupport{

	private Integer goodId;

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}
	
	GoodsBiz goodsBiz;
	ColorBiz colorBiz;
	public void setColorBiz(ColorBiz colorBiz) {
		this.colorBiz = colorBiz;
	}

	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}

	public String getGoods(){
		Goods goods = goodsBiz.findGoodsById(7);
		Colors colors = colorBiz.findColorById(1);
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		session.put("evaluteGoods", goods);
		session.put("brand", goods.getBrand());
		session.put("color", colors);
		return "evaluteGoods";
	}
	

}
