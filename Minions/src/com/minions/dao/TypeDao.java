package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Goodstype;
import com.minions.entity.Type;


public interface TypeDao {
	public void add(Type type);
	/**
	 * 通过hql语句查询goodstype
	 * @param hql
	 * @param param
	 * @return
	 */
	public List<Type> getTypeByHql(String hql,Map<String, Object> param);	
	
}
