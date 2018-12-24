package com.minions.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.AdminPowerBiz;
import com.minions.dao.AdminPowerDao;
import com.minions.dao.PowerDao;
import com.minions.entity.Adminpower;
import com.minions.entity.Power;

public class AdminPowerBizImpl implements AdminPowerBiz {
	AdminPowerDao adminPowerDao;
	PowerDao powerDao;

	public void setPowerDao(PowerDao powerDao) {
		this.powerDao = powerDao;
	}

	public void setAdminPowerDao(AdminPowerDao adminPowerDao) {
		this.adminPowerDao = adminPowerDao;
	}

	@Override
	public void addAdminPowe(Adminpower adminpower) {
		// TODO Auto-generated method stub
		adminPowerDao.addAdminPower(adminpower);

	}

	@Override
	public void deleteAdminPower(Adminpower adminpower) {
		// TODO Auto-generated method stub
		adminPowerDao.deleteAdminPower(adminpower);
	}

	@Override
	public List<Power> getPowerByAdminId(Integer AdminId) {
		// TODO Auto-generated method stub
		String hql="from Power where powerId in (select distinct power.powerId from  Adminpower where admin.adminId = :adminId)";
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("adminId",AdminId);
		return powerDao.getPowerByHql(hql, param);
		
	}
	@Override
	public Adminpower getAdminPowerByadminpower(Integer adminId, Integer powerId) {
		String hql="from Adminpower where admin.adminId=:adminId and power.powerId=:powerId ";
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("adminId",adminId);
		param.put("powerId",powerId);
		
		return adminPowerDao.getAdminPowerByHql(hql, param).get(0);
	}
	@Override
	public Power getPowerById(Integer powerId) {
		String hql="from Power where powerId =:powerId";
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("powerId",powerId);
		return powerDao.getPowerByHql(hql, param).get(0);
	}
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		AdminPowerBizImpl adminBiz=(AdminPowerBizImpl) context.getBean("adminPowerBiz");
		System.out.println(adminBiz.getPowerByAdminId(1));
	}

	

	

}
