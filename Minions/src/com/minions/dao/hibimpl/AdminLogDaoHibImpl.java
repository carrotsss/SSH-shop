package com.minions.dao.hibimpl;

import java.util.List;
import java.util.Map;

import com.minions.dao.AdminLogDao;
import com.minions.entity.Adminlog;

public class AdminLogDaoHibImpl extends BaseHibDao implements AdminLogDao {

	@Override
	public void addAdminLog(Adminlog adminlog) {
		super.add(adminlog);

	}

	@Override
	public void deleteAdminlog(Adminlog adminlog) {
		super.delete(adminlog);

	}

	@Override
	public List<Adminlog> getAdminlogByHql(String Hql, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return super.search(Hql, param);
	}

}
