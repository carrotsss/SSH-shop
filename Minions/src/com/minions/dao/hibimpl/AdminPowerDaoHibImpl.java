package com.minions.dao.hibimpl;

import java.util.List;
import java.util.Map;

import com.minions.dao.AdminPowerDao;
import com.minions.entity.Adminpower;

public class AdminPowerDaoHibImpl extends BaseHibDao implements AdminPowerDao {

	@Override
	public void addAdminPower(Adminpower adminpower) {
		// TODO Auto-generated method stub
		super.add(adminpower);

	}

	@Override
	public void deleteAdminPower(Adminpower adminpower) {
		// TODO Auto-generated method stub
		super.delete(adminpower);
	}

	@Override
	public List<Adminpower> getAdminPowerByHql(String Hql, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return super.search(Hql, param);
	}

}
