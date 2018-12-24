package com.minions.dao.hibimpl;

import java.util.List;
import java.util.Map;

import com.minions.dao.UserGoodsDao;
import com.minions.entity.Goods;
import com.minions.entity.Usersgoods;

public class UserGoodsDaoHibImpl extends BaseHibDao implements UserGoodsDao {

	@Override
	public List<Usersgoods> getUsersGoodsByHql(String hql,
			Map<String, Object> param) {
		// TODO Auto-generated method stub
		return super.search(hql,param);
	}

	@Override
	public Usersgoods getUsersGoodsById(Integer id) {
		// TODO Auto-generated method stub
		return (Usersgoods) super.get(Usersgoods.class, id);
	}

	@Override
	public void updateUsersgoods(Usersgoods usersgoods) {
		// TODO Auto-generated method stub
		super.update(usersgoods);
	}

}
