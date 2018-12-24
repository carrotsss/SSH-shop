package com.minions.biz.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.GoodsBiz;
import com.minions.dao.GoodsDao;
import com.minions.dao.UsersDao;
import com.minions.entity.Goods;
import com.minions.entity.Goodsimg;
import com.minions.entity.Goodstag;
import com.minions.entity.History;
import com.minions.entity.PageGoods;
import com.minions.entity.Tag;
import com.minions.entity.Users;

public class GoodsBizImpl implements GoodsBiz{
	GoodsDao goodsDao;
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}


	@Override
	public List<Goods> findGoodsByWord(String SearchWord) {
		// TODO Auto-generated method stub
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("typeName", "%"+SearchWord+"%");
		String hql="from Goods where goodId in (select distinct goods.goodId from Goodstype where type.typeId in ( "
				+ "select distinct typeId from Type where typeName like :typeName))";
		return goodsDao.getGoodsByHql(hql, param);
		
	}
	public List<Goods> findGoodsByWordPageBean(String SearchWord,int pageSize, int pageNum){
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("typeName", "%"+SearchWord+"%");
		String hql="from Goods where goodId in (select distinct goods.goodId from Goodstype where type.typeId in ( "
				+ "select distinct typeId from Type where typeName like :typeName))";
		return goodsDao.getGoodsByWordPageBean(hql, param, pageSize, pageNum);
		
		
	}
	
	@Override
	public Goods findGoodsById(Integer id) {
		return goodsDao.getGoodsById(id);
	}
	
	@Override
	public String findGoodsNumber(Integer goodId, Integer colorId) {
		String hql = "select gc.goodNumber from Goodscolor gc where gc.colors.colorId = :colorId and gc.goods.goodId = :goodId";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("colorId", colorId);
		props.put("goodId", goodId);
		return (String) goodsDao.getGoodsInfo(hql, props).get(0);
	}


	@Override
	public void updateGoods(Goods goods) {
		goodsDao.updateGoods(goods);
	}

	
	@Override
	public List<Goods> findGirlGoods() {
		// TODO Auto-generated method stub
		Map<String, Object> param= new HashMap<String,Object>();
		String hql="from Goods good where goodId in (select distinct goods.goodId from Goodstype where type.typeId in ( "
				+ "select distinct typeId from Type where typeName like '%女包%'))  order by good.goodTime desc";
		return goodsDao.getGoodsByWordPageBean(hql, null, 15, 1);
	}


	@Override
	public List<Goods> findBoyGoods() {
		// TODO Auto-generated method stub
		Map<String, Object> param= new HashMap<String,Object>();
		String hql="from Goods where goodId in (select distinct goods.goodId from Goodstype where type.typeId in ( "
				+ "select distinct typeId from Type where typeName like '%男包%'))";
		return goodsDao.getGoodsByHql(hql, null);
	}
	@Override
	public int getPageCount(String SearchWord,int pageSize) {
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("typeName", "%"+SearchWord+"%");
		String Hql="FROM Goods goods where goodId in (select distinct goods.goodId from Goodstype where type.typeId in ( "
				+ "select distinct typeId from Type where typeName like :typeName))";
		
		int pageCount = 0;
		int itemCount = goodsDao.getGoodsCount(Hql, param);
		System.out.println("itemCount:"+itemCount);
		pageCount = itemCount / pageSize;
		if(itemCount % pageSize != 0){
			pageCount++;
		}
		System.out.println("pageCount:"+pageCount);
		return pageCount;
	}
	@Override
	public List<Goodsimg> findAllGoodsimg(Goods goods) {
		String hql = "from Goodsimg gs where gs.goods = :goods and gs.colors is not null";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("goods", goods);
		return goodsDao.getGoodsimgByHql(hql, props);
	}
	
	@Override
	public Goodsimg findMaxGoodsimg(Goods goods) {
		String hql = "from Goodsimg gs where gs.goods = :goods and gs.colors = 1000";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("goods", goods);
		return goodsDao.getGoodsimgByHql(hql, props).get(0);
	}
	
	@Override
	public List<Goodsimg> findGoodsimg(Goods goods) {
		String hql = "from Goodsimg gs where gs.goods = :goods and gs.colors is null";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("goods", goods);
		return goodsDao.getGoodsimgByHql(hql, props);
	}

	@Override
	public List<History> findHistoryByUsers(Users users,Goods goods) {
		String hql = "from History h where h.users = :users and h.goods = :goods";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("users", users);
		props.put("goods", goods);
		return goodsDao.getHistoryByHql(hql, props);
	}
	
	@Override
	public List<History> findHistoryByUsers(Users users) {
		String hql = "from History h where h.users = :users";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("users", users);
		return goodsDao.getHistoryByHql(hql, props);
	}
	
	@Override
	public void insertHistory(Users users,Goods goods) {
		History history = new History(users, goods);
		goodsDao.insertHistory(history);
	}
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		GoodsBizImpl a=(GoodsBizImpl) context.getBean("goodsBiz");
		List<Goods> lst=a.findGirlGoods();
		System.out.println("lst:"+lst.size());
//		for (Object gt : goods.getGoodstags()) {
//			System.out.println(((Goodstag)gt).getTag().getTagName());
//		}
//		System.out.println(goods.get(0).getGoodName());
//		for (Object g : goods.get(0).getGoodscolors()) {
//			System.out.println(((Goodscolor)g).getColors().getColor());
//		}
//		Goods goods = a.findGoodsById(7);
//		List<Goodsimg> img = a.findAllGoodsimg(goods);
//		List<Goodsimg> imgList = new ArrayList<Goodsimg>();
//		for (int i = 0; i<img.size();i++) {
//			if(img.get(i).getColors().getColorId()==1000);
//				img.remove(i);
//		}
//		for (Goodsimg goodsimg : img) {
//			System.out.println(goodsimg.getColors().getColor());
//		}
	}
	@Override
	public PageGoods findAllBooks(int currentPage) {
		PageGoods pageGoods=new PageGoods();
		pageGoods.setCurrentPage(currentPage);
		String hql = "from Goods m order by m.goodId desc";
		List<Goods> listGoods = goodsDao.findAllBooksByPage(hql, null, currentPage);
		if(listGoods.size()>0){
			System.out.println("商品数量："+listGoods.size());
			pageGoods.setListGoods(listGoods);
			return pageGoods;
		}
		else
			return null;
	}


	@Override
	public int getCount() {
		String hql = "from Goods";
		return goodsDao.getCountt(hql, null);
	}

	

}
