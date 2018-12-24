package com.minions.biz;

import java.util.List;

import com.minions.entity.Goodstype;
import com.minions.entity.Type;

public interface TypeBiz {
	
	/**
	 * 根据搜索字查找子分类名称
	 * @param SearchWord
	 * @return
	 */
	public List<Type> findSonGoodstypeByWord(String SearchWord);
	

}
