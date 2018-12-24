package com.minions.struts.action;

import java.util.Map;

import com.minions.biz.GoodsBiz;
import com.minions.entity.Goods;







import com.minions.entity.PageGoods;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GoodsContentAction extends ActionSupport{
	private int currentPage;
	private String content1;
	private Integer goodId;

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getGoodId() {
		return goodId;
	}

	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}

	public String getContent1() {
		return content1;
	}

	public void setContent1(String content1) {
		this.content1 = content1;
	}
	
	GoodsBiz goodsBiz;
	
	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}

	private String htmlspecialchars(String str) {
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\"", "&quot;");
		return str;
	}
	
	private String html(String str) {
		str = str.replaceAll("&amp;", "&");
		str = str.replaceAll("&lt;", "<");
		str = str.replaceAll("&gt;", ">");
		str = str.replaceAll("&quot;", "\"");
		return str;
	}
	
	public String updateContent(){
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		Goods goods = (Goods) session.get("updateGoods");
		content1 = this.htmlspecialchars(content1);
//		System.out.println(content1);
//		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.");
//		System.out.println(content1);
		goods.setGoodContent(content1);
		goodsBiz.updateGoods(goods);
		session.put("updateGoods", goods);
		content1 = this.html(goods.getGoodContent());
//		System.out.println("content1:"+content1);
		session.put("content1", content1);
		return "content";
	}
	
	public String getUpdateGoods(){
		Goods goods = goodsBiz.findGoodsById(goodId);
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		session.put("updateGoods", goods);
		return "updateGoods";
	}
	
	
	public String getAllGoods(){
		PageGoods pageGoods=new PageGoods();
		pageGoods.setCurrentPage(Integer.valueOf(currentPage));
		pageGoods = goodsBiz.findAllBooks(pageGoods.getCurrentPage());
		pageGoods.setPageSize(10);
		int totalRow = goodsBiz.getCount();
		pageGoods.setTotalRows(totalRow);
		int totalPage=0;
		int num=totalRow%5;
		if(num==0){
			totalPage=totalRow/5;
		}
		else{
			totalPage=totalRow/5+1;
		}
		pageGoods.setTotalSize(totalPage);
		for (Goods g :  pageGoods.getListGoods()) {
			System.out.println(g.getGoodName());
		}
		ActionContext.getContext().getSession().put("goodd", pageGoods.getListGoods());
		ActionContext.getContext().getSession().put("pageSize", pageGoods.getPageSize());
		ActionContext.getContext().getSession().put("currentPage", pageGoods.getCurrentPage());
		ActionContext.getContext().getSession().put("totalSize", pageGoods.getTotalSize());	
		return "allGoods";
	}
}
