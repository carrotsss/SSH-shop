package com.minions.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.ColorBiz;
import com.minions.biz.GoodsBiz;
import com.minions.biz.UsersBiz;
import com.minions.dao.UsersDao;
import com.minions.entity.Colors;
import com.minions.entity.Goods;
import com.minions.entity.Goodsimg;
import com.minions.entity.History;
import com.minions.entity.Users;
import com.minions.entity.Usersaddress;
import com.minions.entity.Usersgoods;

public class UsersBizImpl implements UsersBiz {

	UsersDao usersDao;
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	
	@Override
	public void insertUsersgoods(Usersgoods usergood) {
		usersDao.saveUserGoods(usergood);
	}

	@Override
	public Users findUserById(Integer id) {
		String hql = "from Users u where u.userId = :userId";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", id);
		return usersDao.getUserByHql(hql, map).get(0);
	}

	@Override
	public Users userLogin(String name, String userPwd) {
		String hql1 = "from Users u where u.userEmail = :userEmail and userPwd = :userPwd";
		String hql2 = "from Users u where u.userTel = :userTel and userPwd = :userPwd";
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> mmap = new HashMap<String, Object>();
		map.put("userEmail", name);
		map.put("userPwd", userPwd);
		mmap.put("userPwd", userPwd);
		mmap.put("userTel", name);
		if(usersDao.getUserByHql(hql1, map).size()>0)
			return usersDao.getUserByHql(hql1, map).get(0);
		else if(usersDao.getUserByHql(hql2, mmap).size()>0)
				return usersDao.getUserByHql(hql2, mmap).get(0);
		else
			return null;
	}

	@Override
	public void insertUsersaddress(Usersaddress userAddress) {
		usersDao.saveUsersaddress(userAddress);
	}
	

	@Override
	public Usersgoods findUserGoods(Usersgoods userGoods) {
		String hql = "from Usersgoods u where u.usersaddress = usersaddress and u.users = :users and u.colors = :colors and u.goods = :goods";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("users", userGoods.getUsers());
		props.put("colors", userGoods.getColors());
		props.put("goods", userGoods.getGoods());
		props.put("usersaddress", userGoods.getUsersaddress());
		List list = usersDao.getUserGoodsByHql(hql, props);
		if(list.size()>0)
			return  (Usersgoods)list.get(0);
		else
			return null;
	}

	@Override
	public void updateUsergoods(Usersgoods usergoods) {
		usersDao.updateUsergoods(usergoods);
	}
	
	@Override
	public Usersaddress findUsersaddress(Usersaddress usersaddress) {
		String hql = "from Usersaddress u where u.users = :users and u.uaTel = :uaTel and "
				+ "u.uaAddress = :uaAddress and u.uaEmail = :uaEmail and u.uaCode = :uaCode and u.uaName = :uaName";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("users", usersaddress.getUsers());
		props.put("uaTel", usersaddress.getUaTel());
		props.put("uaAddress", usersaddress.getUaAddress());
		props.put("uaEmail", usersaddress.getUaEmail());
		props.put("uaCode", usersaddress.getUaCode());
		props.put("uaName", usersaddress.getUaName());
		List list = usersDao.findUsersaddressByHql(hql, props);
		if(list.size()>0)
			return (Usersaddress) list.get(0);
		else
			return null;
	}

	@Override
	public void insertUsers(Users users) {
		usersDao.insertUsers(users);
	}
	
	@Override
	public Users findUsersByTel(String userTel) {
		String hql = "from Users u where u.userTel = :userTel";
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("userTel", userTel);
		if(usersDao.getUserByHql(hql, props).size()>0){
			return usersDao.getUserByHql(hql, props).get(0);
		}
		else
			return null;
	}

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		UsersBizImpl u = (UsersBizImpl) context.getBean("usersBiz");
		ColorBiz c = (ColorBizImpl) context.getBean("colorBiz");
		GoodsBiz g = (GoodsBizImpl) context.getBean("goodsBiz");
//		Users user = u.userLogin("111", "123");
//		System.out.println(user);
//		Users users = u.findUserById(1);
//		Colors colors = c.findColorByName("橙色");
//		Goods goods = g.findGoodsById(7);
//		Usersaddress usersaddress =u.findUsersaddress( new Usersaddress(users, 111, "fafs", "dfaf", 111, "afds"));
//		System.out.println(usersaddress);
//		Usersgoods userGoods = new Usersgoods(users, colors, goods, 2);
//		Integer number = u.findUserGoods(userGoods);
//		System.out.println(number);
		Users user = u.findUsersByTel("13821836612");
		System.out.println(user);
	}
}
