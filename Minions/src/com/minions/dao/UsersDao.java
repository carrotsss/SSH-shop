package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Goodsimg;
import com.minions.entity.Users;
import com.minions.entity.Usersaddress;
import com.minions.entity.Usersgoods;

public interface UsersDao {

	/**
	 * 向usersgoods表中添加数据
	 * @param usergood
	 */
	public void saveUserGoods(Usersgoods usergood);
	
	/**
	 * 跟据hql语句查询用户
	 * @param hql
	 * @return
	 */
	public List<Users> getUserByHql(String hql,Map<String, Object> map);
	
	/**
	 * 向usersaddress表中写入记录
	 * @param userAddress
	 */
	public void saveUsersaddress(Usersaddress userAddress);
	
	/**
	 * 根据Hql语句查询Usersaddress信息
	 * @param hql
	 * @param props
	 * @return
	 */
	public List<Usersaddress> findUsersaddressByHql(String hql,Map<String, Object> props);
	
	/**
	 * 根据Hql语句查询usersgoods表信息
	 * @param hql
	 * @param props
	 * @return
	 */
	public List<Usersgoods> getUserGoodsByHql(String hql,Map<String, Object> props);
	
	/**
	 * 更新usersgoods表中数据
	 * @param usergoods
	 */
	public void updateUsergoods(Usersgoods usergoods);
	
	/**
	 * 向Users表中添加记录
	 * @param users
	 */
	public void insertUsers(Users users);
	
}
