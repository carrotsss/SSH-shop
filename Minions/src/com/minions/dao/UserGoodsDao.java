package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Goods;
import com.minions.entity.Usersgoods;

public interface UserGoodsDao {
	public List<Usersgoods> getUsersGoodsByHql(String hql,Map<String, Object> param);
	public Usersgoods getUsersGoodsById(Integer id);
	public void updateUsersgoods(Usersgoods usersgoods); 

}
