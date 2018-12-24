package com.minions.struts.intercepter;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.minions.dao.AdminLogDao;
import com.minions.entity.Admin;
import com.minions.entity.Adminlog;
import com.minions.entity.Power;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AdminLogInterceptor implements Interceptor {
	private Admin admin;
	private Adminlog adminlog;
	AdminLogDao adminLogDao;
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Adminlog getAdminlog() {
		return adminlog;
	}

	public void setAdminlog(Adminlog adminlog) {
		this.adminlog = adminlog;
	}

	public void setAdminLogDao(AdminLogDao adminLogDao) {
		this.adminLogDao = adminLogDao;
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp nowtime= Timestamp.valueOf(df.format(new Date()));
		System.out.println("我开始了我的拦截");
		String actionMethod = invocation.getProxy().getMethod();
		String actionName = invocation.getProxy().getActionName();
		System.out.println("actionMethod"+actionMethod);
		System.out.println("actionName"+actionName);
		if(!actionMethod.equals("adminLogin")){
		Map<String, Object> session = ActionContext.getContext().getSession();
		admin = (Admin) session.get("admin");
		if (admin != null){
			System.out.println("我看到了用户存在");
			//权限检测
			List<Power> lstpower=(List<Power>) session.get("lstpower");
			boolean pass=false;
			
				if(actionName.equals("editshouye_getBanners")||actionName.equals("editbanner_saveBanner")){
					System.out.println("editshouye_getBanners");
					for (Power power : lstpower) {
						{
							if(power.getPowerId()==9){
								pass=true;
								
							}
						}
					}
				}
				else if(actionName.equals("editshouye_getGonggao")||actionName.equals("editbanner_saveBanner1")){
					for (Power power : lstpower) {
						{
							if(power.getPowerId()==9){
								pass=true;
							}
						}
					}
				}
				else if(actionName.equals("admin_getAdminlog")){
					for (Power power : lstpower) {
						{
							if(power.getPowerId()==10){
								pass=true;
							}
						}
					}
				}
				else if(actionName.equals("admin_getUsersGoods")||actionName.equals("admin_sendGoods")){
					for (Power power : lstpower) {
						{
							if(power.getPowerId()==11){
								pass=true;
							}
						}
					}
				}
				else if(actionName.equals("admin_showAdmin")||actionName.equals("admin_deleteAdmin")||actionName.equals("admin_showAdminPower")||actionName.equals("admin_changeAdminPower")){
					for (Power power : lstpower) {
						{
							if(power.getPowerId()==8){
								pass=true;
							}
						}
					}
				}
			
			
			
			
			if(pass==false){
				return "nopower";
				
			}
			adminlog = new Adminlog(admin, actionMethod, actionName, nowtime);
			adminLogDao.addAdminLog(adminlog);
			return invocation.invoke();
		}
		
		else{
			System.out.println("我看到了用户不存在");
			return "noadmin";
		}
	}
		else{
			System.out.println("过滤掉了");
			return  invocation.invoke();
		}
		
		
		
	}

}
