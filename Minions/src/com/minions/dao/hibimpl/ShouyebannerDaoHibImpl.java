package com.minions.dao.hibimpl;

import java.util.List;
import java.util.Map;

import com.minions.dao.ShouyebannerDao;
import com.minions.entity.Shouyebanner;

public class ShouyebannerDaoHibImpl  extends BaseHibDao implements ShouyebannerDao{
	public List<Shouyebanner> getbannerByHql(String hql,
			Map<String, Object> param){
		
		return super.search(hql,param);
	}

	@Override
	public void update(Shouyebanner shouyebanner) {
		// TODO Auto-generated method stub
		 super.update(shouyebanner);;
	}
}
