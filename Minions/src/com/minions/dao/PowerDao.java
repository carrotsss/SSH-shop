package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Power;

public interface PowerDao {
	public List<Power> getPowerByHql(String hql,
			Map<String, Object> param);
}
