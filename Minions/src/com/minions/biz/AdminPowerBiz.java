package com.minions.biz;

import java.util.List;

import com.minions.entity.Admin;
import com.minions.entity.Adminpower;
import com.minions.entity.Power;

public interface AdminPowerBiz {
	public void addAdminPowe(Adminpower adminpower);
	public void deleteAdminPower(Adminpower adminpower);
	public List<Power> getPowerByAdminId(Integer AdminId);
	public Adminpower getAdminPowerByadminpower(Integer adminId,Integer powerId);
	public Power getPowerById(Integer powerId);
}
