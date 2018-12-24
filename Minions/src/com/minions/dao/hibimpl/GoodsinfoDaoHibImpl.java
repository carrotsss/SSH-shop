 package com.minions.dao.hibimpl;

import com.minions.dao.GoodsinfoDao;
import com.minions.entity.Goodsinfo;

public class GoodsinfoDaoHibImpl extends BaseHibDao implements GoodsinfoDao {
	

	@Override
	public void InsertGoodsinfo(Goodsinfo goodsinfo) {
		super.add(goodsinfo);
		
	}

}
