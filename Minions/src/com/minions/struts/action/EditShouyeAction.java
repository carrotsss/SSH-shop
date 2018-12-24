package com.minions.struts.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.minions.biz.GoodsBiz;
import com.minions.biz.ShouyebannerBiz;
import com.minions.entity.Goods;
import com.minions.entity.Shouyebanner;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EditShouyeAction extends ActionSupport{
	ShouyebannerBiz shouyebannerBiz;
	GoodsBiz goodsBiz;
	public GoodsBiz getGoodsBiz() {
		return goodsBiz;
	}
	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}

	public void setShouyebannerBiz(ShouyebannerBiz shouyebannerBiz) {
		this.shouyebannerBiz = shouyebannerBiz;
	}
	public String getBanners(){
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		List<Goods> boyGoods=new ArrayList<Goods>();
		List<Goods> girlGoods=new ArrayList<Goods>();
		boyGoods=goodsBiz.findBoyGoods();
		girlGoods=goodsBiz.findGirlGoods();
		System.out.println("boyGoods:"+boyGoods.size());
		System.out.println("girlGoods:"+girlGoods.size());
		session.put("boyGoods", boyGoods);
		session.put("girlGoods", girlGoods);
		
		
		List<Shouyebanner>	banners=shouyebannerBiz.findAllBanner();
		List<Shouyebanner> banner2=new ArrayList<Shouyebanner>();
		List<Shouyebanner> hotact=new ArrayList<Shouyebanner>();
		List<Shouyebanner> situation=new ArrayList<Shouyebanner>();
		List<Shouyebanner> lst1f=new ArrayList<Shouyebanner>();
		for (Shouyebanner shouyebanner : banners) {
			if(shouyebanner.getShouyebannerType().indexOf("gonggao")>-1){
				session.put("gonggao", shouyebanner);
				System.out.println("gonggao"+shouyebanner.getShouyebannerContent());
			}
			else if(shouyebanner.getShouyebannerType().indexOf("banner1")>-1){
				session.put("banner1", shouyebanner);
			}
			
			else if(shouyebanner.getShouyebannerType().indexOf("banner2")>-1){
				banner2.add(shouyebanner);
			}
			else if(shouyebanner.getShouyebannerType().indexOf("hotact")>-1){
				hotact.add(shouyebanner);
			}
			else if(shouyebanner.getShouyebannerType().indexOf("situation")>-1){
				situation.add(shouyebanner);
			}
			else if(shouyebanner.getShouyebannerType().indexOf("of")>-1){
				lst1f.add(shouyebanner);
			}
		}
		for (int i = 1; i <= banner2.size(); i++) {
			session.put("banner2"+i, banner2.get(i-1));
			System.out.println("banner2:"+ banner2.get(i-1).getShouyebannerContent());
		}
		for (int i = 1; i <= hotact.size(); i++) {
			session.put("hotact"+i, hotact.get(i-1));
			System.out.println("hotact:"+ hotact.get(i-1).getShouyebannerContent());
		}
		for (int i = 1; i <= situation.size(); i++) {
			session.put("situation"+i, situation.get(i-1));
			System.out.println("situation:"+ situation.get(i-1).getShouyebannerContent());
		}
		for (int i = 1; i <= lst1f.size(); i++) {
			session.put("lst1f"+i, lst1f.get(i-1));
			System.out.println("lst1f:"+ lst1f.get(i-1).getShouyebannerContent());
		}
		
		return "gotoShouye";
	}
	public String getGonggao(){
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		Shouyebanner gonggao=shouyebannerBiz.findBannerByTypeName("gonggao");
		session.put("gonggao", gonggao);
		return "editgonggaojsp";
	}
	
	
	
	

}