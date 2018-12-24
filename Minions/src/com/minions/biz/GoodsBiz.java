package com.minions.biz;

import java.util.List;

import com.minions.entity.Goods;
import com.minions.entity.Goodsimg;
import com.minions.entity.History;
import com.minions.entity.PageGoods;
import com.minions.entity.Tag;
import com.minions.entity.Users;

public interface GoodsBiz {
	/**
	 * 通过搜索字查找商品啊啊
	 * @param SearchWord
	 * @return
	 */
	public List<Goods> findGoodsByWord(String SearchWord);
	public List<Goods> findGoodsByWordPageBean(String SearchWord,int pageSize, int pageNum);
	/**
	 * 通过商品ID查找商品信息
	 * @param id
	 * @return
	 */
	public Goods findGoodsById(Integer id);
	
	/**
	 * 通过商品ID和颜色ID查询商品编号
	 * @param goodsId
	 * @param colorId
	 * @return
	 */
	public String findGoodsNumber(Integer goodId,Integer colorId);

	
	/**
	 * 更新goods表中记录的信息
	 * @param goods
	 */
	public void updateGoods(Goods goods);

	/**
	 * 查找女生包
	 * @return
	 */
	public List<Goods> findGirlGoods();
	/**
	 * 查找男生包
	 * @return
	 */
	public List<Goods> findBoyGoods();
	public int getPageCount(String SearchWord,int pageSize);

	/**
	 * 根据goodsId查找所有商品颜色图片
	 * @param goodsId
	 * @return
	 */
	public List<Goodsimg> findAllGoodsimg(Goods goods);
	
	/**
	 * 根据goodsId查找商品的示例图片
	 * @param goods
	 * @return
	 */
	public Goodsimg findMaxGoodsimg(Goods goods);

	/**
	 * 根据goodsId查找商品的展示图片
	 * @param goods
	 * @return
	 */
	public List<Goodsimg> findGoodsimg(Goods goods);
	
	/**
	 * 根据Users和goods查询History
	 * @param users
	 * @return
	 */
	public List<History> findHistoryByUsers(Users users,Goods goods);
	
	/**
	 * 根据Users查询History
	 * @param users
	 * @return
	 */
	public List<History> findHistoryByUsers(Users users);	
	/**
	 * 向History表添加数据
	 * @param history
	 */
	public void insertHistory(Users users,Goods goods);
	public PageGoods findAllBooks(int currentPage);
	
	public int getCount();
}
