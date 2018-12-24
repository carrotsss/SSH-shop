package com.minions.struts.action;

import com.minions.biz.UsersBiz;
import com.minions.entity.Users;
import com.opensymphony.xwork2.ActionContext;

public class RegisterAction {
	private String tx;
	private String username;
	public String getTx() {
		return tx;
	}

	public void setTx(String tx) {
		this.tx = tx;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	UsersBiz usersBiz;

	public void setUsersBiz(UsersBiz usersBiz) {
		this.usersBiz = usersBiz;
	}

	public String userRegister(){
		Users users = new Users(username, tx);
		Users user = usersBiz.findUsersByTel(tx);
		if(user!=null){
			ActionContext.getContext().getSession().put("onRegister", "该号码已经注册！请登录或找回密码");
			return "onRegister";
		}
		else{
			usersBiz.insertUsers(users);
			return "register";
		}
	}
}
