package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Admin;


public interface AdminDao {
/**
 * 
 * @param Hql
 * @param param
 * @return
 */
	public List<Admin> getAdminByHql(String Hql,Map<String, Object> param);
	/**
	 * 
	 * @param admin
	 */
	public void addAdmin(Admin admin);
	public void deleteAdmin(Admin admin);
	
	
}
