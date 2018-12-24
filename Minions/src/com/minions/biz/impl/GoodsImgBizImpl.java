package com.minions.biz.impl;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.GoodsImgBiz;
import com.minions.dao.GoodsImgDao;
import com.minions.entity.Goodsimg;

public class GoodsImgBizImpl implements GoodsImgBiz {
	GoodsImgDao goodsImgDao;
	public void setGoodsImgDao(GoodsImgDao goodsImgDao) {
		this.goodsImgDao = goodsImgDao;
	}
	@Override
	public List<Goodsimg> findAllGoodsimg() {
		// TODO Auto-generated method stub
		String hql=" from Goodsimg ";
		return goodsImgDao.getGoodimgsByHql(hql, null);
	}
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		GoodsImgBiz a=(GoodsImgBiz) context.getBean("goodsImgBiz");
		System.out.println(a.findAllGoodsimg().size());
	}

}
