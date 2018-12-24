package com.minions.dao.hibimpl;

import java.util.List;
import java.util.Map;

import com.minions.dao.PowerDao;
import com.minions.entity.Power;

public class PowerDaoHibImpl extends BaseHibDao implements PowerDao {

	@Override
	public List<Power> getPowerByHql(String hql, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return super.search(hql,param);
	}

}
