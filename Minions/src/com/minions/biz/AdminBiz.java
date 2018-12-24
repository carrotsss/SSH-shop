package com.minions.biz;

import java.util.List;

import com.minions.entity.Admin;
import com.minions.entity.Adminlog;
import com.minions.entity.Usersgoods;

public interface AdminBiz{
	/**
	 * 
	 * @param username
	 * @param pwd
	 * @return
	 */
	public Admin checkAdmin(String username,String pwd);
	/**
	 * 获取所有admin
	 * @param adminType
	 * @return
	 */
	public List<Admin> getAllAdmin();
	public void deleteAdmin(Admin admin);
	public Admin getAdminById(Integer adminId);
	public List<Adminlog> getAlladminlog();
	public List<Usersgoods> findAllUsersgoods();
	public Usersgoods findUsersGoodsById(Integer id);
	public void updateUsersgoods(Usersgoods usersgoods);
}
