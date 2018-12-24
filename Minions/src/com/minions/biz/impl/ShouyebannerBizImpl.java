package com.minions.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.minions.biz.ShouyebannerBiz;
import com.minions.dao.ShouyebannerDao;
import com.minions.entity.Shouyebanner;

public class ShouyebannerBizImpl implements ShouyebannerBiz {
	ShouyebannerDao shouyebannerDao;
	public void setShouyebannerDao(ShouyebannerDao shouyebannerDao) {
		this.shouyebannerDao = shouyebannerDao;
	}
	@Override
	public List<Shouyebanner> findAllBanner() {
		String hql="from Shouyebanner";
		return shouyebannerDao.getbannerByHql(hql, null);
	}
	@Override
	public Shouyebanner findBannerByTypeName(String typeName) {
		// TODO Auto-generated method stub
		Map<String, Object> param=new HashMap<String, Object>();
		param.put("shouyebannerType", typeName);
		String hql="from Shouyebanner where shouyebannerType = :shouyebannerType";
		return shouyebannerDao.getbannerByHql(hql, param).get(0);
	}
	@Override
	public void updateShouyeBanner(Shouyebanner shouyebanner) {
		// TODO Auto-generated method stub
		shouyebannerDao.update(shouyebanner);
	}


}
