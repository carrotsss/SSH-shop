package com.minions.dao.hibimpl;

import java.util.List;
import java.util.Map;

import com.minions.dao.ColorDao;
import com.minions.entity.Colors;

public class ColorDaoHibImpl extends BaseHibDao implements ColorDao {

	@Override
	public List<Colors> findColorByHql(String hql,Map<String, Object> props) {
		return super.search(hql, props);
	}

}
