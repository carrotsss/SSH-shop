package com.minions.biz.impl;

import java.util.List;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.biz.TypeBiz;
import com.minions.dao.TypeDao;
import com.minions.entity.Goods;
import com.minions.entity.Goodstype;
import com.minions.entity.Type;

public class TypeBizImpl implements TypeBiz {
	TypeDao typeDao;

	public void setTypeDao(TypeDao typeDao) {
		this.typeDao = typeDao;
	}

	@Override
	public List<Type> findSonGoodstypeByWord(String SearchWord) {
		// TODO Auto-generated method stub
		Map<String, Object> param= new HashMap<String,Object>();
		param.put("typeName", "%"+SearchWord+"%");
		String hql="from Type where typeParentid in (select distinct typeId from Type where typeName like :typeName)";
//		String hql="from Goodstype where goodtypeParentid in (select distinct goodtypeParentid from Goodstype where goodtypeType like :goodtypeType)";
		return typeDao.getTypeByHql(hql, param);
	}
	
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		TypeBizImpl a=(TypeBizImpl) context.getBean("typeBiz");
		List<Type> goods=a.findSonGoodstypeByWord("包");
		for (Type type : goods) {
			System.out.println("type:"+type.getTypeName());
		}
	}

}
