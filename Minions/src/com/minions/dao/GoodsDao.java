package com.minions.dao;

import java.util.List;
import java.util.Map;

import com.minions.entity.Evalute;
import com.minions.entity.Goods;
import com.minions.entity.Goodsimg;
import com.minions.entity.History;

public interface GoodsDao {
	/**
	 * 通过hql语句获取goods的list集合
	 * @param Hql
	 * @param param 查询的条件参数
	 * @return
	 */
	public List<Goods> getGoodsByHql(String Hql,Map<String, Object> param);

	/**
	 * 通过商品ID查询商品信息
	 * @param id
	 * @return
	 */
	public Goods getGoodsById(Integer id);
	
	/**
	 * 通过hql语句查询商品的某个具体信息
	 * @param hql
	 * @param props
	 * @return
	 */
	public List<Object> getGoodsInfo(String hql,Map<String, Object> props);
	public List<Goods> getGoodsByWordPageBean(String Hql,Map<String, Object> param,int pageSize, int pageNum);
	public int getGoodsCount(String Hql,Map<String, Object> param);
	
	/**
	 * 更新goods表记录
	 * @param goods
	 */
	public void updateGoods(Goods goods);
	
	/**
	 * 查询商品的图片
	 * @param hql
	 * @param props
	 * @return
	 */
	public List<Goodsimg> getGoodsimgByHql(String hql,Map<String, Object> props);
	
	/**
	 * 根据hql语句查询History表信息
	 * @param hql
	 * @param props
	 * @return
	 */
	public List<History> getHistoryByHql(String hql,Map<String, Object> props);
	
	/**
	 * 向History表添加数据
	 * @param history
	 */
	public void insertHistory(History history);
	
	/**
	 * 查询该商品的所有评论
	 * @return
	 */
	public List<Evalute> findAllEvaluteByGoods();
	public List<Goods> findAllBooksByPage(String hql,Map<String, Object> props,int currentPage);
	
	public int getCountt(String hql,Map<String, Object> props);
 
}

