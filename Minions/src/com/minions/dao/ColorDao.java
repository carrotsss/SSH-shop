package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Colors;

public interface ColorDao {
	
	/**
	 * 根据Hql语句查询颜色信息
	 * @param id
	 * @return
	 */
	public List<Colors> findColorByHql(String hql,Map<String, Object> props);
}
