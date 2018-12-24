package com.minions.dao.hibimpl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class BaseHibDao extends HibernateDaoSupport{

	
	protected void add(Object item){
	super.getHibernateTemplate().save(item);
		
	}
	protected void delete(Object item){
		super.getHibernateTemplate().delete(item);
	}
	protected void update(Object item){
		super.getHibernateTemplate().update(item);
	}
	
	protected Object get(Class clazz, Serializable id){
		return super.getHibernateTemplate().get(clazz, id);
	}
	
	protected List search(String hql, Map<String, Object> props){
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(props);
		return query.list();
	}
	
	protected List searchByPaging(String hql, Map<String, Object> props, int pageSize, int pageNum){
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(props);
		query.setFirstResult(pageSize*(pageNum-1));
		query.setMaxResults(pageSize);
		return query.list();
	}
	protected int getCount(String hql, Map<String, Object> props){
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(props);
		List<Object> list = query.list();
		return list.size();
	}
}
