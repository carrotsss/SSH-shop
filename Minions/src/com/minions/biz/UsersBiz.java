package com.minions.biz;

import java.util.List;

import com.minions.entity.Colors;
import com.minions.entity.Goods;
import com.minions.entity.Goodsimg;
import com.minions.entity.History;
import com.minions.entity.Users;
import com.minions.entity.Usersaddress;
import com.minions.entity.Usersgoods;
import com.minions.struts.action.UserGoodsAction;

public interface UsersBiz {

	/**
	 * 对于用户提交的订单写入数据库
	 * @param user
	 * @param good
	 */
	public void insertUsersgoods(Usersgoods usergood);
	
	/**
	 * 根据用户ID查询用户
	 * @param id
	 * @return
	 */
	public Users findUserById(Integer id);
	
	/**
	 * 根据用户名和密码查询用户
	 * @param userName
	 * @param userPwd
	 * @return
	 */
	public Users userLogin(String name,String userPwd);
	
	/**
	 * 根据用户填入的地址信息写入usersaddress表
	 * @param usersAddress
	 */
	public void insertUsersaddress(Usersaddress userAddress);
	
	/**
	 * 查询是否存在相同的地址信息
	 * @param usersaddress
	 * @return
	 */
	
	public Usersaddress findUsersaddress(Usersaddress usersaddress);
	/**
	 * 查询用户记录是否存在
	 * @param userGoods
	 */
	public Usersgoods findUserGoods(Usersgoods userGoods);
	
	/**
	 * 更新usersgoods表中已存在的记录的数量字段
	 * @param userGoods
	 */
	public void updateUsergoods(Usersgoods usergoods);
	
	/**
	 * 注册用户
	 * @param users
	 */
	public void insertUsers(Users users);
	
	/**
	 * 查询是否已存在使用该号码的用户
	 * @param uTel
	 * @return
	 */
	public Users findUsersByTel(String userTel);
	
}
