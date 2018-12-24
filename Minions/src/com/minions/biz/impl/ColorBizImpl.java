package com.minions.biz.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.ColorBiz;
import com.minions.dao.ColorDao;
import com.minions.entity.Colors;

public class ColorBizImpl implements ColorBiz {

	ColorDao colorDao;
	public void setColorDao(ColorDao colorDao) {
		this.colorDao = colorDao;
	}
	@Override
	public Colors findColorById(Integer id) {
		String hql = "from Colors c where c.colorId = :colorId";
		Map<String , Object> props = new HashMap<String, Object>();
		props.put("colorId", id);
		return colorDao.findColorByHql(hql, props).get(0);
	}

	@Override
	public Colors findColorByName(String name) {
		String hql = "from Colors c where c.color = :color";
		Map<String , Object> props = new HashMap<String, Object>();
		props.put("color", name);
		return colorDao.findColorByHql(hql, props).get(0);
	}
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		ColorBizImpl a=(ColorBizImpl) context.getBean("colorBiz");
		Colors c = a.findColorByName("橙色");
		System.out.println(c.getColor());
	}
}
