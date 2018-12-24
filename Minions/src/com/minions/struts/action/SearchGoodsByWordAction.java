package com.minions.struts.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.minions.biz.GoodsBiz;
import com.minions.biz.GoodsImgBiz;
import com.minions.biz.TypeBiz;
import com.minions.entity.Goods;
import com.minions.entity.Goodsimg;
import com.minions.entity.Goodstype;
import com.minions.entity.Type;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchGoodsByWordAction extends ActionSupport{
	public String SearchWord;
	public File searchpic;
	private String searchpicFileName;
	private String searchpicContentType;
	GoodsBiz goodsBiz;
	TypeBiz typeBiz;
	private int pageSize=6;
	private int pageNum=1;
	private int pageCount;
	GoodsImgBiz goodsImgBiz;
	
	public void setGoodsImgBiz(GoodsImgBiz goodsImgBiz) {
		this.goodsImgBiz = goodsImgBiz;
	}

	public File getSearchpic() {
		return searchpic;
	}

	public void setSearchpic(File searchpic) {
		this.searchpic = searchpic;
	}

	public String getSearchpicFileName() {
		return searchpicFileName;
	}

	public void setSearchpicFileName(String searchpicFileName) {
		this.searchpicFileName = searchpicFileName;
	}

	public String getSearchpicContentType() {
		return searchpicContentType;
	}

	public void setSearchpicContentType(String searchpicContentType) {
		this.searchpicContentType = searchpicContentType;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}

	public void setTypeBiz(TypeBiz typeBiz) {
		this.typeBiz = typeBiz;
	}

	public String getSearchWord() {
		return SearchWord;
	}

	public void setSearchWord(String searchWord) throws UnsupportedEncodingException {
		SearchWord = new String(searchWord.getBytes("ISO-8859-1"),"UTF-8");
		
	}
	
	
	public String doSearchByWord(){
		
		System.out.println("SearchWord:"+SearchWord);
//		List<Goods> goodsList=goodsBiz.findGoodsByWord(SearchWord);
		pageCount = goodsBiz.getPageCount(SearchWord,pageSize);
		
		List<Goods> goodsList=goodsBiz.findGoodsByWordPageBean(SearchWord, pageSize, pageNum);
		List<Type> typeList=typeBiz.findSonGoodstypeByWord(SearchWord);
		System.out.println("pageNum:"+pageNum);
		System.out.println("pageCount:"+pageCount);
		System.out.println("goodsList:"+goodsList.size());
		System.out.println("typeList:"+typeList.size());
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		session.put("goodsList", goodsList);
		session.put("typeList", typeList);
		
		return "goSearchJsp";
	}
	public String doSearchByPic() throws IOException{
		
		String realpath=ServletActionContext.getServletContext().getRealPath("IMG");
		String sqlpath=ServletActionContext.getServletContext().getRealPath("images");
		System.out.println("realpath:"+realpath);
		File file =new File(realpath);
		if(!file.exists()){
			file.mkdirs();
		}
		System.out.println(searchpicFileName);
		System.out.println(searchpicContentType);
		if("image/pjpeg".equalsIgnoreCase(searchpicContentType)){
			System.out.println("将图片上传到IMG地方");
		FileUtils.copyFile(searchpic, new File(file,"searchpic.jpg"));
		}
		BufferedImage img2 = ImageIO.read(new File(realpath+"/searchpic.jpg"));
		List<Goodsimg> alllstGoodsimg=goodsImgBiz.findAllGoodsimg();
		System.out.println("alllstGoodsimg:"+alllstGoodsimg.size());
		List<Goodsimg> retlstGoodsimg=new ArrayList<Goodsimg>();
		Goodsimg goodsimg=new Goodsimg();
		BufferedImage img1=null;
		int similarity = 0;
		//lst位置
		int flag=0;
		goodsimg=alllstGoodsimg.get(0);
		System.out.println(">>>path:"+goodsimg.getGoodsimgImg());
		System.out.println("sqlpath:"+sqlpath);
		img1=ImageIO.read(new File(sqlpath+"/"+goodsimg.getGoodsimgImg()));
		similarity = (int) (ImageHistogram.getSimilarity(img1, img2)*100);
		System.out.println("similarity:"+similarity);
		goodsimg.setSimilarity(similarity);
		retlstGoodsimg.add(goodsimg);
		for (int i = 1; i < alllstGoodsimg.size(); i++) {
			//获取一张图片计算相似度
			goodsimg=new Goodsimg();
			similarity = 0;
			goodsimg=alllstGoodsimg.get(i);
			img1=ImageIO.read(new File(sqlpath+"/"+goodsimg.getGoodsimgImg()));
			similarity = (int) (ImageHistogram.getSimilarity(img1, img2)*100);
			System.out.println("similarity"+i+":"+similarity);
			//判断是否和上一个图片的商品id相同
			//如果相同，比较相似度
			if(goodsimg.getGoods().getGoodId()==alllstGoodsimg.get(i-1).getGoods().getGoodId()){
				//如果相似度高
				if(similarity>alllstGoodsimg.get(i-1).getSimilarity()){
					
					retlstGoodsimg.remove(flag);
					goodsimg.setSimilarity(similarity);
					retlstGoodsimg.add(goodsimg);
				}
				//如果相似度没有之前的高，则什么都不做
				
				
			}
			//如果和上一个图片的商品id不相同，则存入lst，并且让标志加1
			else{
				goodsimg.setSimilarity(similarity);
				retlstGoodsimg.add(goodsimg);
				flag++;
				
			}
		}
		//遍历完成后，让lst进行排序
			Goodsimg[]  objs = (Goodsimg[]) retlstGoodsimg.toArray(new Goodsimg[0]);
		 	Object temp = null;
		     for(int i = 0 ; i < objs.length; i ++){
		      for(int j = i+1 ; j < objs.length ; j ++){
		       if(((Goodsimg)objs[i]).getSimilarity() < ((Goodsimg)objs[j]).getSimilarity()){
		        temp = objs[i];
		        objs[i] = objs[j];
		        objs[j] = (Goodsimg) temp;
		       }
		      }
		     }
		     for (int i = 0; i < objs.length; i++) {
				System.out.println("objs:"+((Goodsimg)objs[i]).getSimilarity());
			}
		     
		    List<Goodsimg> lstGoodsimg=new ArrayList<Goodsimg>(Arrays.asList( objs));
		    
		    for (Goodsimg goodsimg2 : lstGoodsimg) {
				System.out.println("lstGoodsimg:"+goodsimg2.getSimilarity());
			}
		    ActionContext context = ActionContext.getContext();
			Map<String,Object> session=context.getSession();
		    session.put("lstGoodsimg", lstGoodsimg);
		return "goPicSearchJsp";
	}

}