package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Adminpower;


public interface AdminPowerDao {
	
	public void addAdminPower(Adminpower adminpower);
	public void deleteAdminPower(Adminpower adminpower);
	public List<Adminpower> getAdminPowerByHql(String Hql,Map<String, Object> param);

}
