package com.minions.dao.hibimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.minions.dao.TypeDao;
import com.minions.entity.Goodstype;
import com.minions.entity.Type;

public class TypeDaoHibImpl extends BaseHibDao implements TypeDao {

	@Override
	public void add(Type type) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Type> getTypeByHql(String hql,
			Map<String, Object> param) {
		// TODO Auto-generated method stub
		return super.search(hql,param);
	}


//	public List<Goodstype> getGoodsBySearchWord(String SearchWord) {
//		Map<String, Object> param= new HashMap<String,Object>();
//		param.put("goodtypeType", SearchWord);
//		return super.search("form Goodstype where goodtypeType = ?",param);
//		
//	}

//
//	public List<Goodstype> getGoodstypeBySearchWord(String SearchWord) {
//		Map<String, Object> param= new HashMap<String,Object>();
//		param.put("goodtypeType", "%"+SearchWord+"%");
//		String hql="from Goodstype where goodtypeParentid in (select distinct goodtypeParentid from Goodstype where goodtypeType like :goodtypeType)";
//		return super.search(hql,param);
//	}
//
//	public static void main(String[] args) {
//		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
//		GoodstypeDaoHibImpl a=(GoodstypeDaoHibImpl) context.getBean("GoodstypeDao");
//		List<Goodstype> goodstype=a.getGoodstypeBySearchWord("我的包");
//		System.out.println(goodstype.size());
//	}
	

}
