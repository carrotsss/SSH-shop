package com.minions.dao.hibimpl;

import java.util.List;
import java.util.Map;

import com.minions.dao.UsersDao;
import com.minions.entity.Goodsimg;
import com.minions.entity.Users;
import com.minions.entity.Usersaddress;
import com.minions.entity.Usersgoods;

public class UsersDaoHibImpl extends BaseHibDao implements UsersDao {

	@Override
	public void saveUserGoods(Usersgoods usergood) {
		super.add(usergood);
	}

	@Override
	public List<Users> getUserByHql(String hql, Map<String, Object> map) {
		return super.search(hql, map);
	}

	@Override
	public void saveUsersaddress(Usersaddress userAddress) {
		super.add(userAddress);
	}

	@Override
	public List<Usersgoods> getUserGoodsByHql(String hql,
			Map<String, Object> props) {
		return super.search(hql, props);
	}

	@Override
	public void updateUsergoods(Usersgoods usergoods) {
		super.update(usergoods);
	}

	@Override
	public List<Usersaddress> findUsersaddressByHql(String hql,
			Map<String, Object> props) {
		return super.search(hql, props);
	}

	@Override
	public void insertUsers(Users users) {
		super.add(users);
	}


}
