package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Shouyebanner;

public interface ShouyebannerDao {
	/**
	 * 通过hql语句获取广告list
	 * @param hql
	 * @param param
	 * @return
	 */
	public List<Shouyebanner> getbannerByHql(String hql,
			Map<String, Object> param);
	public void update(Shouyebanner shouyebanner);
	
}
