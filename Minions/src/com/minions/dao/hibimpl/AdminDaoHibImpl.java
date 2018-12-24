package com.minions.dao.hibimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.impl.AdminBizImpl;
import com.minions.dao.AdminDao;
import com.minions.entity.Admin;

public class AdminDaoHibImpl extends BaseHibDao implements AdminDao {

	@Override
	public List<Admin> getAdminByHql(String Hql, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return super.search(Hql, param);
	}

	@Override
	public void addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		super.add(admin);

	}

	@Override
	public void deleteAdmin(Admin admin) {
		// TODO Auto-generated method stub
		super.delete(admin);
		
	}
public static void main(String[] args) {
	ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
	AdminDaoHibImpl adminDao=(AdminDaoHibImpl) context.getBean("adminDao");
	String hql="from Admin where adminName = :username and adminPwd =:pwd";
	Map<String, Object> param= new HashMap<String,Object>();
	param.put("username","admin");
	param.put("pwd","admin");
	adminDao.getAdminByHql(hql, param);
}
}
