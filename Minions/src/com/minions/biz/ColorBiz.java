package com.minions.biz;

import com.minions.entity.Colors;

public interface ColorBiz {

	/**
	 * 通过Color的ID查询颜色信息
	 * @param id
	 * @return
	 */
	public Colors findColorById(Integer id);
	
	/**
	 * 通过颜色名称查询颜色信息
	 * @param name
	 * @return
	 */
	public Colors findColorByName(String name);
}
