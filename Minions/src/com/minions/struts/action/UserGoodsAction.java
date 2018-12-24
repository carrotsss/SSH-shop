package com.minions.struts.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.minions.biz.ColorBiz;
import com.minions.biz.GoodsBiz;
import com.minions.biz.UsersBiz;
import com.minions.entity.Brand;
import com.minions.entity.Colors;
import com.minions.entity.Goods;
import com.minions.entity.Users;
import com.minions.entity.Usersaddress;
import com.minions.entity.Usersgoods;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserGoodsAction extends ActionSupport{
	private Integer goodId;
	private Integer fengzi;
	private Integer cid;
	private Integer dgoodId;
	private Integer dcolorId;
	public Integer getDgoodId() {
		return dgoodId;
	}
	public void setDgoodId(Integer dgoodId) {
		this.dgoodId = dgoodId;
	}
	public Integer getDcolorId() {
		return dcolorId;
	}
	public void setDcolorId(Integer dcolorId) {
		this.dcolorId = dcolorId;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Integer getFengzi() {
		return fengzi;
	}
	public void setFengzi(Integer fengzi) {
		this.fengzi = fengzi;
	}
	public Integer getGoodId() {
		return goodId;
	}
	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}
	
	UsersBiz userBiz;
	GoodsBiz goodsBiz;
	ColorBiz colorBiz;
	public void setColorBiz(ColorBiz colorBiz) {
		this.colorBiz = colorBiz;
	}
	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}
	public void setUserBiz(UsersBiz userBiz) {
		this.userBiz = userBiz;
	}
	
	public String addUserGoods(){
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		Usersaddress userAddress = (Usersaddress) session.get("shouhuoxinxi");
		Usersaddress useraddress = userBiz.findUsersaddress(userAddress);
		if(useraddress!=null)
			userAddress = useraddress;
		else
			userBiz.insertUsersaddress(userAddress);
		

		Users user = (Users) session.get("user");
		List<Map<String, Object>> allBuyGoods = (List<Map<String, Object>>) session.get("allBuyGoods");
		for (Map<String, Object> map : allBuyGoods) {
			Goods good = goodsBiz.findGoodsById(((Goods) map.get("good")).getGoodId());
			Colors color = (Colors) map.get("color");
			Integer num = (Integer) map.get("number");
			System.out.println("购买的数量"+num);
			Usersgoods usergoods = new Usersgoods(userAddress, user, color, good, num);
			Usersgoods usergood = userBiz.findUserGoods(usergoods);
//			System.out.println(usergood.getNumber());
			Integer allNumber = good.getGoodAllnumber()-num;
			Integer saleNumber = good.getGoodSalenumber()+num;
			System.out.println(allNumber+">>"+saleNumber);
			good.setGoodAllnumber(allNumber);
			good.setGoodSalenumber(saleNumber);
			System.out.println("总数"+good.getGoodAllnumber());
			System.out.println("卖出去的数"+good.getGoodSalenumber());
			goodsBiz.updateGoods(good);
			if(usergood!=null){
				usergood.setNumber(usergood.getNumber()+num);
				userBiz.updateUsergoods(usergood);
			}
			else{
				System.out.println("youde");
				userBiz.insertUsersgoods(usergoods);
			}
		}
		
		return "success";
	}
	
	public String checkUserGoods(){
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		Goods good = goodsBiz.findGoodsById(goodId);
		Colors color = colorBiz.findColorById(cid);
		float totalPrice = fengzi*good.getGoodPrice();
		Map<String, Object> buyGoods = new HashMap<String, Object>();
		buyGoods.put("good", good);
		buyGoods.put("color", color);
		buyGoods.put("number", fengzi);
		buyGoods.put("brand", good.getBrand()); 
		buyGoods.put("totalPrice", totalPrice);
		if(session.get("allBuyGoods")==null){
			List<Map<String, Object>> allBuyGoods = new ArrayList<Map<String,Object>>();
			allBuyGoods.add(buyGoods);
			session.put("allBuyGoods", allBuyGoods);
		}
		else{
			List<Map<String, Object>> allBuyGoods = (List<Map<String, Object>>) session.get("allBuyGoods");
			int i=0;
			for (Map<String, Object> map : allBuyGoods) {
				if(((Goods)map.get("good")).getGoodId().equals(good.getGoodId())&&
						((Colors)map.get("color")).getColorId().equals(color.getColorId())){
					Integer numb = (Integer)map.get("number")+fengzi;
					map.put("number", numb);
					totalPrice = numb*((Goods)map.get("good")).getGoodPrice();
					map.put("totalPrice", totalPrice);
				}
				else{
					i++;
				}
			}
			if(i==allBuyGoods.size()){
				allBuyGoods.add(buyGoods);
			}
			session.put("allBuyGoods", allBuyGoods); 
		}
		float allPrice =0;
		Integer allNumber = 0;
		for (Map<String, Object> map : (List<Map<String, Object>>)session.get("allBuyGoods")) {
			allPrice +=  Float.parseFloat(map.get("totalPrice").toString()); 
			allNumber += Integer.parseInt(map.get("number").toString());
		}
		session.put("allNumber", allNumber);
		session.put("allPrice", allPrice);
		return "check";
	}
	
	public String deleteUserGoods(){
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		List<Map<String, Object>> allBuyGoods = (List<Map<String, Object>>) session.get("allBuyGoods");
		List<Map<String, Object>> ll = new ArrayList<Map<String,Object>>();
		for (Map<String, Object> map : allBuyGoods) {
			if(((Goods)map.get("good")).getGoodId().equals(dgoodId)&&
					((Colors)map.get("color")).getColorId().equals(dcolorId)){
				continue;
			}
			ll.add(map);
		}
		allBuyGoods = ll;
		session.put("allBuyGoods", allBuyGoods); 
		float allPrice =0;
		Integer allNumber = 0;
		for (Map<String, Object> map : (List<Map<String, Object>>)session.get("allBuyGoods")) {
			allPrice +=  Float.parseFloat(map.get("totalPrice").toString()); 
			allNumber += Integer.parseInt(map.get("number").toString());
		}
		session.put("allNumber", allNumber);
		session.put("allPrice", allPrice);
		return "delete";
	}
	

}
	

