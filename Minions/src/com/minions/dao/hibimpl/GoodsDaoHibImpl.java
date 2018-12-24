package com.minions.dao.hibimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.minions.dao.GoodsDao;
import com.minions.entity.Evalute;
import com.minions.entity.Goods;
import com.minions.entity.Goodsimg;
import com.minions.entity.History;

public class GoodsDaoHibImpl extends BaseHibDao implements GoodsDao {

	@Override
	public List<Goods> getGoodsByHql(String hql,Map<String, Object> param) {
//		Map<String, Object> param= new HashMap<String,Object>();
//		param.put("goodtypeType", "%"+SearchWord+"%");
//		String hql="from Goods where goodId in (select distinct goods.goodId from Goodstype where goodtypeType like :goodtypeType)";
		return super.search(hql,param);
	}
	
	@Override
	public Goods getGoodsById(Integer id) {
		return (Goods) super.get(Goods.class, id);
	}

	@Override
	public List<Object> getGoodsInfo(String hql, Map<String, Object> props) {
		return super.search(hql, props);
	}

	@Override
	public List<Goods> getGoodsByWordPageBean(String Hql,
			Map<String, Object> param, int pageSize, int pageNum) {
		// TODO Auto-generated method stub
		return super.searchByPaging(Hql, param, pageSize, pageNum);
	}




	@Override
	public int getGoodsCount(String Hql, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return super.getCount(Hql, param);
	}
		@Override
	public void updateGoods(Goods goods) {
		super.update(goods);
	}

	@Override
	public List<Goodsimg> getGoodsimgByHql(String hql, Map<String, Object> props) {
		return super.search(hql, props);
	}
	
	@Override
	public List<History> getHistoryByHql(String hql, Map<String, Object> props) {
		return super.search(hql, props);
	}
	
	@Override
	public void insertHistory(History history) {
		super.add(history);
	}
//	public static void main(String[] args) {
//		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
//		GoodsDaoHibImpl a=(GoodsDaoHibImpl) context.getBean("GoodsDao");
//		List<Goods> goods=a.getGoodsBySearchWord("我的包");
//		System.out.println(goods.size());
//	}

	@Override
	public List<Evalute> findAllEvaluteByGoods() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Goods> findAllBooksByPage(String hql,Map<String, Object> props,int currentPage) {
		return super.searchByPaging(hql, props, 10, currentPage);
	}

	@Override
	public int getCountt(String hql, Map<String, Object> props) {
		return super.getCount(hql, props);
	}
	}
