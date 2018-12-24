package com.minions.struts.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.minions.biz.AdminBiz;
import com.minions.biz.AdminPowerBiz;
import com.minions.biz.impl.Sendemail;
import com.minions.entity.Admin;
import com.minions.entity.Adminlog;
import com.minions.entity.Adminpower;
import com.minions.entity.Power;
import com.minions.entity.Usersgoods;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminLoginAction  extends ActionSupport{
	private String username;
	private String pwd;
	private Integer deleteAdminId;
	private Integer editAdminId;
	private String[] nowlstpower;
	private String[] sendgoodsId;
	
	public String[] getSendgoodsId() {
		return sendgoodsId;
	}
	public void setSendgoodsId(String[] sendgoodsId) {
		this.sendgoodsId = sendgoodsId;
	}
	public String[] getNowlstpower() {
		return nowlstpower;
	}
	public void setNowlstpower(String[] nowlstpower) {
		this.nowlstpower = nowlstpower;
	}
	public Integer getEditAdminId() {
		return editAdminId;
	}
	public void setEditAdminId(Integer editAdminId) {
		this.editAdminId = editAdminId;
	}
	public Integer getDeleteAdminId() {
		return deleteAdminId;
	}
	public void setDeleteAdminId(Integer deleteAdminId) {
		this.deleteAdminId = deleteAdminId;
	}
	AdminBiz adminBiz;
	AdminPowerBiz adminPowerBiz;
	Sendemail sendemail;
	public void setSendemail(Sendemail sendemail) {
		this.sendemail = sendemail;
	}
	public void setAdminBiz(AdminBiz adminBiz) {
		this.adminBiz = adminBiz;
	}
	public void setAdminPowerBiz(AdminPowerBiz adminPowerBiz) {
		this.adminPowerBiz = adminPowerBiz;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String adminLogin(){
		Admin admin=adminBiz.checkAdmin(username, pwd);
		if(admin != null){
			List<Power> lstpower=new ArrayList<Power>();
			lstpower=adminPowerBiz.getPowerByAdminId(admin.getAdminId());
			ActionContext context = ActionContext.getContext();
			Map<String,Object> session=context.getSession();
			session.put("admin", admin);
			session.put("lstpower", lstpower);
			return "gotoAdminJsp";
		
		}
		else{
		return "goback";
			
		}
		
	}
	
	
	public String showAdmin(){
		List<Admin> lstadmin=new ArrayList<Admin>();
		lstadmin=adminBiz.getAllAdmin();
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		session.put("lstadmin", lstadmin);
		System.out.println("lstadmin"+lstadmin.get(0).getAdminType());
		return "goshowadmin";
	}
	public String deleteAdmin(){
		Admin deleteadmin = new Admin();
		deleteadmin.setAdminId(deleteAdminId);
		adminBiz.deleteAdmin(deleteadmin);
		System.out.println("完成删除操作");
		return "dodelete";
	}
	public String showAdminPower(){
		List<Power> editlstpower=new ArrayList<Power>();
		System.out.println("editAdminId:"+editAdminId);
		editlstpower=adminPowerBiz.getPowerByAdminId(editAdminId);
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		session.put("editlstpower", editlstpower);
		session.put("editAdminId", editAdminId);
		return "goeditpower";
		}
	
	public String changeAdminPower(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Map session = ActionContext.getContext().getSession();
		List<Power> editlstpower=(List<Power>) session.get("editlstpower");
		//遍历原先的。
		for (Power power : editlstpower) {
			boolean remove=true;
			for (String nowpower : nowlstpower) {
				if(power.getPowerId()==Integer.parseInt(nowpower)){
					remove=false;
					
				}
			}
			if(remove){
				Adminpower adminpower=adminPowerBiz.getAdminPowerByadminpower(editAdminId, power.getPowerId());
				adminPowerBiz.deleteAdminPower(adminpower);
			}
			
		}
		
		
		for (String nowpower : nowlstpower) {
			boolean add=true;
			for (Power power : editlstpower) {
				if(power.getPowerId()==Integer.parseInt(nowpower)){
					add=false;
					
				}
			}
			if(add){
				Adminpower adminpower=new Adminpower();
				Admin editAdmin=adminBiz.getAdminById(editAdminId);
				Power power=adminPowerBiz.getPowerById(Integer.parseInt(nowpower));
				adminpower.setAdmin(editAdmin);
				adminpower.setPower(power);
				adminPowerBiz.addAdminPowe(adminpower);;
			}
			
			
			
		}
		editlstpower=adminPowerBiz.getPowerByAdminId(editAdminId);
		session.put("editlstpower", editlstpower);
		return "goeditpowerjsp";
	}
	public String getAdminlog(){
		List<Adminlog> lstadminlog=adminBiz.getAlladminlog();
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		session.put("lstadminlog", lstadminlog);
		return "goadminlogjsp";
	}
	public String getUsersGoods(){
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		List<Usersgoods> lstusersgoods=adminBiz.findAllUsersgoods();
		session.put("lstusersgoods", lstusersgoods);
		return "gousersgoodsjsp";
	}
	public String sendGoods(){
		Usersgoods usergoods=null;
		for (int i = 0; i < sendgoodsId.length; i++) {
			System.out.println("sendgoodsId:"+sendgoodsId);
			usergoods=new Usersgoods();
			usergoods=adminBiz.findUsersGoodsById(Integer.parseInt(sendgoodsId[i]));
			usergoods.setStatus(1);
			
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Timestamp nowtime= Timestamp.valueOf(df.format(new Date()));
			System.out.println("email:"+usergoods.getUsersaddress().getUaEmail());
			sendemail.setAddress("413331308@qq.com",usergoods.getUsersaddress().getUaEmail(), "小黄人发货通知");
			sendemail.send("你所订购的"+usergoods.getGoods().getGoodName()+"于"+nowtime+"发货，请注意查收快递");
			adminBiz.updateUsersgoods(usergoods);
		}
		return "saveusersgoods";
		
	}

}
