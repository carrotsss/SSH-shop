package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Goodsimg;

public interface GoodsImgDao {
	public List<Goodsimg> getGoodimgsByHql(String Hql,Map<String, Object> param);

}
