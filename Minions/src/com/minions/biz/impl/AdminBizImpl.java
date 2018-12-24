package com.minions.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.AdminBiz;
import com.minions.dao.AdminDao;
import com.minions.dao.AdminLogDao;
import com.minions.dao.UserGoodsDao;
import com.minions.entity.Admin;
import com.minions.entity.Adminlog;
import com.minions.entity.Usersgoods;

public class AdminBizImpl implements AdminBiz {
	AdminDao adminDao;
	AdminLogDao adminLogDao;
	UserGoodsDao userGoodsDao;

	public void setUserGoodsDao(UserGoodsDao userGoodsDao) {
		this.userGoodsDao = userGoodsDao;
	}

	public void setAdminLogDao(AdminLogDao adminLogDao) {
		this.adminLogDao = adminLogDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public Admin checkAdmin(String username, String pwd) {
		String hql="from Admin where adminName = :username and adminPwd =:pwd";
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("username",username);
		param.put("pwd",pwd);
		List<Admin> adminlst=adminDao.getAdminByHql(hql, param);
		if(adminlst.size()>0){
			return adminlst.get(0);
			
		}
		else{
		return null;
		}
		
	}
	@Override
	public List<Admin> getAllAdmin() {
		String hql="from Admin";
		
		return adminDao.getAdminByHql(hql, null);
	}
	@Override
	public void deleteAdmin(Admin admin) {

		System.out.println("我在进行一次删除操作");
		adminDao.deleteAdmin(admin);
	}
	@Override
	public Admin getAdminById(Integer adminId) {
		String hql="from Admin where adminId = :adminId";
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("adminId",adminId);
		return adminDao.getAdminByHql(hql, param).get(0);
	}
	@Override
	public List<Adminlog> getAlladminlog() {
		String hql="from Adminlog adminlog order by adminlog.adminlogTime desc ";
		return adminLogDao.getAdminlogByHql(hql, null);
	}
	@Override
	public List<Usersgoods> findAllUsersgoods() {
		String hql="from Usersgoods u order by u.time desc ";
		return userGoodsDao.getUsersGoodsByHql(hql, null);
	}

	@Override
	public Usersgoods findUsersGoodsById(Integer id) {
		String hql="from Usersgoods u where u.usersgoodsId = :usersgoodsId";
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("usersgoodsId",id);
		return userGoodsDao.getUsersGoodsByHql(hql, param).get(0);
	}

	@Override
	public void updateUsersgoods(Usersgoods usersgoods) {
		// TODO Auto-generated method stub
		userGoodsDao.updateUsersgoods(usersgoods);
		
	}

	
	
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		AdminBizImpl adminBiz=(AdminBizImpl) context.getBean("adminBiz");
		System.out.println(adminBiz.getAllAdmin().get(0).getAdminType());
	}

	
	

	

	

}
