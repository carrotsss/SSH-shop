package com.minions.struts.action;

import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.UsersBiz;
import com.minions.entity.Users;
import com.minions.entity.Usersaddress;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UsersAction extends ActionSupport implements ModelDriven<Usersaddress>{
	private String name;
	private String userPwd;
	private Usersaddress useraddress=new Usersaddress();
	private String region1;
	private String region2;
	private String region3;
	private String textfield3;
	private String textfield5;
	private String textfield6;
	public String getTextfield5() {
		return textfield5;
	}
	public void setTextfield5(String textfield5) {
		this.textfield5 = textfield5;
	}
	public String getTextfield6() {
		return textfield6;
	}
	public void setTextfield6(String textfield6) {
		this.textfield6 = textfield6;
	}
	public String getRegion1() {
		return region1;
	}
	public void setRegion1(String region1) {
		this.region1 = region1;
	}
	public String getRegion2() {
		return region2;
	}
	public void setRegion2(String region2) {
		this.region2 = region2;
	}
	public String getRegion3() {
		return region3;
	}
	public void setRegion3(String region3) {
		this.region3 = region3;
	}
	public String getTextfield3() {
		return textfield3;
	}
	public void setTextfield3(String textfield3) {
		this.textfield3 = textfield3;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	UsersBiz usersBiz;
	public void setUsersBiz(UsersBiz usersBiz) {
		this.usersBiz = usersBiz;
	}

	public String userLogin(){
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		Users user = usersBiz.userLogin(name,  userPwd);
		if(user!=null){
			session.put("user", user);
			return "success";
		}
		else{
			session.put("message", "用户名或密码错误！");
			return "failure";
		}
	}
	
	public String checkUserAddress(){
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		Users user = (Users) session.get("user");
		String uaTel = null;
		if(textfield5!=null)
			 uaTel = textfield5;
		else
			 uaTel = textfield6;
		useraddress.setUaTel(uaTel);
		if(session.get("user")==null)
			return "unlogin";
		if(region1==null||"请选择".equals(region1))
			region1="";
		if(region2==null||"请选择".equals(region1))
			region2="";
		if(region3==null||"请选择".equals(region3))
			region3="";
		String uaAddress = region1+region2+region3+textfield3;
		useraddress.setUaAddress(uaAddress);
		useraddress.setUsers(user);
		session.put("shouhuoxinxi",useraddress);
		return "checked";
	}
	public static void main(String[] args) {
		ApplicationContext context1 = new ClassPathXmlApplicationContext("applicationContext.xml");
		UsersAction uu = (UsersAction) context1.getBean("usersAction");
		uu.userLogin();
	}
	
	public Usersaddress getModel() {
		return useraddress;
	}
}
