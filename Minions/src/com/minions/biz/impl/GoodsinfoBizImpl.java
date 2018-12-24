package com.minions.biz.impl;

import com.minions.biz.GoodsinfoBiz;
import com.minions.dao.GoodsinfoDao;

import com.minions.entity.Goodsinfo;
public class GoodsinfoBizImpl implements GoodsinfoBiz{
	GoodsinfoDao goodsinfoDao;
	public void setGoodsinfoDao(GoodsinfoDao goodsinfoDao){
		this.goodsinfoDao=goodsinfoDao;
	}

	@Override
	public void InsertGoodsinfo(Goodsinfo goodsinfo) {
		goodsinfoDao.InsertGoodsinfo(goodsinfo);
		
	}
}
