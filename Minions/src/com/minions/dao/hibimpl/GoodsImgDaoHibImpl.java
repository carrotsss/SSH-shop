package com.minions.dao.hibimpl;

import java.util.List;
import java.util.Map;

import com.minions.dao.GoodsImgDao;
import com.minions.entity.Goodsimg;

public class GoodsImgDaoHibImpl extends BaseHibDao implements GoodsImgDao {

	@Override
	public List<Goodsimg> getGoodimgsByHql(String Hql, Map<String, Object> param) {
		// TODO Auto-generated method stub
		return super.search(Hql,param);
	}

}
