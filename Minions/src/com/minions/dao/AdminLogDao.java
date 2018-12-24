package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Adminlog;


public interface AdminLogDao {
	public void addAdminLog(Adminlog adminlog);
	public void deleteAdminlog(Adminlog adminlog);
	public List<Adminlog> getAdminlogByHql(String Hql,Map<String, Object> param);

}
