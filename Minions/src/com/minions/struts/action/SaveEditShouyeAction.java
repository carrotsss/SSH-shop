package com.minions.struts.action;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.minions.biz.GoodsBiz;
import com.minions.biz.ShouyebannerBiz;
import com.minions.entity.Shouyebanner;
import com.opensymphony.xwork2.ActionSupport;

public class SaveEditShouyeAction extends ActionSupport{
	ShouyebannerBiz shouyebannerBiz;
	GoodsBiz goodsBiz;
	private String gonggao;
	private String hotact1;
	private String hotact2;
	private String hotact3;
	private String hotact4;
	private String situation1;
	public String getHotact1() {
		return hotact1;
	}

	public void setHotact1(String hotact1) {
		this.hotact1 = hotact1;
	}

	public String getHotact2() {
		return hotact2;
	}

	public void setHotact2(String hotact2) {
		this.hotact2 = hotact2;
	}

	public String getHotact3() {
		return hotact3;
	}

	public void setHotact3(String hotact3) {
		this.hotact3 = hotact3;
	}

	public String getHotact4() {
		return hotact4;
	}

	public void setHotact4(String hotact4) {
		this.hotact4 = hotact4;
	}

	public String getSituation1() {
		return situation1;
	}

	public void setSituation1(String situation1) {
		this.situation1 = situation1;
	}

	public String getSituation2() {
		return situation2;
	}

	public void setSituation2(String situation2) {
		this.situation2 = situation2;
	}

	public String getSituation3() {
		return situation3;
	}

	public void setSituation3(String situation3) {
		this.situation3 = situation3;
	}

	public String getSituation4() {
		return situation4;
	}

	public void setSituation4(String situation4) {
		this.situation4 = situation4;
	}


	private String situation2;
	private String situation3;
	private String situation4;
	
	public String getGonggao() {
		return gonggao;
	}

	public void setGonggao(String gonggao) {
		this.gonggao = gonggao;
	}

	public GoodsBiz getGoodsBiz() {
		return goodsBiz;
	}

	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}


	public void setShouyebannerBiz(ShouyebannerBiz shouyebannerBiz) {
		this.shouyebannerBiz = shouyebannerBiz;
	}
	
	
	private File banner1;
	private String banner1FileName;
	private String banner1ContentType;
	private File banner2;
	private String banner2FileName;
	private String banner2ContentType;
	private File of1;
	private String of1FileName;
	private String of1ContentType;
	private File of2;
	private String of2FileName;
	private String of2ContentType;
	private File of3;
	private String of3FileName;
	private String of3ContentType;
	private File of4;
	private String of4FileName;
	private String of4ContentType;
	private File of5;
	private String of5FileName;
	private String of5ContentType;
	private File of6;
	private String of6FileName;
	private String of6ContentType;
	private File of7;
	private String of7FileName;
	private String of7ContentType;
	private File of8;
	private String of8FileName;
	private String of8ContentType;
	private File of9;
	private String of9FileName;
	private String of9ContentType;
	private File of10;
	private String of10FileName;
	private String of10ContentType;

	public File getBanner1() {
		return banner1;
	}


	public void setBanner1(File banner1) {
		this.banner1 = banner1;
	}


	public String getBanner1FileName() {
		return banner1FileName;
	}


	public void setBanner1FileName(String banner1FileName) {
		this.banner1FileName = banner1FileName;
	}


	public String getBanner1ContentType() {
		return banner1ContentType;
	}


	public void setBanner1ContentType(String banner1ContentType) {
		this.banner1ContentType = banner1ContentType;
	}


	public File getBanner2() {
		return banner2;
	}


	public void setBanner2(File banner2) {
		this.banner2 = banner2;
	}


	public String getBanner2FileName() {
		return banner2FileName;
	}


	public void setBanner2FileName(String banner2FileName) {
		this.banner2FileName = banner2FileName;
	}


	public String getBanner2ContentType() {
		return banner2ContentType;
	}


	public void setBanner2ContentType(String banner2ContentType) {
		this.banner2ContentType = banner2ContentType;
	}


	public File getOf1() {
		return of1;
	}


	public void setOf1(File of1) {
		this.of1 = of1;
	}


	public String getOf1FileName() {
		return of1FileName;
	}


	public void setOf1FileName(String of1FileName) {
		this.of1FileName = of1FileName;
	}


	public String getOf1ContentType() {
		return of1ContentType;
	}


	public void setOf1ContentType(String of1ContentType) {
		this.of1ContentType = of1ContentType;
	}


	public File getOf2() {
		return of2;
	}


	public void setOf2(File of2) {
		this.of2 = of2;
	}


	public String getOf2FileName() {
		return of2FileName;
	}


	public void setOf2FileName(String of2FileName) {
		this.of2FileName = of2FileName;
	}


	public String getOf2ContentType() {
		return of2ContentType;
	}


	public void setOf2ContentType(String of2ContentType) {
		this.of2ContentType = of2ContentType;
	}


	public File getOf3() {
		return of3;
	}


	public void setOf3(File of3) {
		this.of3 = of3;
	}


	public String getOf3FileName() {
		return of3FileName;
	}


	public void setOf3FileName(String of3FileName) {
		this.of3FileName = of3FileName;
	}


	public String getOf3ContentType() {
		return of3ContentType;
	}


	public void setOf3ContentType(String of3ContentType) {
		this.of3ContentType = of3ContentType;
	}


	public File getOf4() {
		return of4;
	}


	public void setOf4(File of4) {
		this.of4 = of4;
	}


	public String getOf4FileName() {
		return of4FileName;
	}


	public void setOf4FileName(String of4FileName) {
		this.of4FileName = of4FileName;
	}


	public String getOf4ContentType() {
		return of4ContentType;
	}


	public void setOf4ContentType(String of4ContentType) {
		this.of4ContentType = of4ContentType;
	}


	public File getOf5() {
		return of5;
	}


	public void setOf5(File of5) {
		this.of5 = of5;
	}


	public String getOf5FileName() {
		return of5FileName;
	}


	public void setOf5FileName(String of5FileName) {
		this.of5FileName = of5FileName;
	}


	public String getOf5ContentType() {
		return of5ContentType;
	}


	public void setOf5ContentType(String of5ContentType) {
		this.of5ContentType = of5ContentType;
	}


	public File getOf6() {
		return of6;
	}


	public void setOf6(File of6) {
		this.of6 = of6;
	}


	public String getOf6FileName() {
		return of6FileName;
	}


	public void setOf6FileName(String of6FileName) {
		this.of6FileName = of6FileName;
	}


	public String getOf6ContentType() {
		return of6ContentType;
	}


	public void setOf6ContentType(String of6ContentType) {
		this.of6ContentType = of6ContentType;
	}


	public File getOf7() {
		return of7;
	}


	public void setOf7(File of7) {
		this.of7 = of7;
	}


	public String getOf7FileName() {
		return of7FileName;
	}


	public void setOf7FileName(String of7FileName) {
		this.of7FileName = of7FileName;
	}


	public String getOf7ContentType() {
		return of7ContentType;
	}


	public void setOf7ContentType(String of7ContentType) {
		this.of7ContentType = of7ContentType;
	}


	public File getOf8() {
		return of8;
	}


	public void setOf8(File of8) {
		this.of8 = of8;
	}


	public String getOf8FileName() {
		return of8FileName;
	}


	public void setOf8FileName(String of8FileName) {
		this.of8FileName = of8FileName;
	}


	public String getOf8ContentType() {
		return of8ContentType;
	}


	public void setOf8ContentType(String of8ContentType) {
		this.of8ContentType = of8ContentType;
	}


	public File getOf9() {
		return of9;
	}


	public void setOf9(File of9) {
		this.of9 = of9;
	}


	public String getOf9FileName() {
		return of9FileName;
	}


	public void setOf9FileName(String of9FileName) {
		this.of9FileName = of9FileName;
	}


	public String getOf9ContentType() {
		return of9ContentType;
	}


	public void setOf9ContentType(String of9ContentType) {
		this.of9ContentType = of9ContentType;
	}


	public File getOf10() {
		return of10;
	}


	public void setOf10(File of10) {
		this.of10 = of10;
	}


	public String getOf10FileName() {
		return of10FileName;
	}


	public void setOf10FileName(String of10FileName) {
		this.of10FileName = of10FileName;
	}


	public String getOf10ContentType() {
		return of10ContentType;
	}


	public void setOf10ContentType(String of10ContentType) {
		this.of10ContentType = of10ContentType;
	}

	public String saveBanner() throws IOException{
		String realpath=ServletActionContext.getServletContext().getRealPath("images");
		File file =new File(realpath);
		if(!file.exists()){
			file.mkdirs();
		}
		System.out.println(banner1FileName);
		System.out.println(banner1ContentType);
		if("image/pjpeg".equalsIgnoreCase(banner1ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(banner1, new File(file,"banner1.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of1ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of1, new File(file,"of1.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of2ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of2, new File(file,"of2.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of3ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of3, new File(file,"of3.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of4ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of4, new File(file,"of4.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of5ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of5, new File(file,"of5.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of6ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of6, new File(file,"of6.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of7ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of7, new File(file,"of7.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of8ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of8, new File(file,"of8.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of9ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of9, new File(file,"of9.jpg"));
		}
		if("image/pjpeg".equalsIgnoreCase(of10ContentType)){
			System.out.println("我进行了图片的copy");
		FileUtils.copyFile(of10, new File(file,"of10.jpg"));
		}
		
	
		System.out.println("gonggao"+gonggao);
		Shouyebanner bgonggao=shouyebannerBiz.findBannerByTypeName("gonggao");
		bgonggao.setShouyebannerContent(gonggao);
		shouyebannerBiz.updateShouyeBanner(bgonggao);
		
		Shouyebanner bhotact1=shouyebannerBiz.findBannerByTypeName("hotact1");
		bgonggao.setShouyebannerContent(hotact1);
		shouyebannerBiz.updateShouyeBanner(bhotact1);
		Shouyebanner bhotact2=shouyebannerBiz.findBannerByTypeName("hotact2");
		bgonggao.setShouyebannerContent(hotact2);
		shouyebannerBiz.updateShouyeBanner(bhotact2);
		Shouyebanner bhotact3=shouyebannerBiz.findBannerByTypeName("hotact3");
		bgonggao.setShouyebannerContent(hotact3);
		shouyebannerBiz.updateShouyeBanner(bhotact3);
		Shouyebanner bhotact4=shouyebannerBiz.findBannerByTypeName("hotact4");
		bgonggao.setShouyebannerContent(hotact4);
		shouyebannerBiz.updateShouyeBanner(bhotact4);
		
		return "goeditShouye";
	}

	public String saveBanner1(){
		Shouyebanner bgonggao=shouyebannerBiz.findBannerByTypeName("gonggao");
		bgonggao.setShouyebannerContent(gonggao);
		shouyebannerBiz.updateShouyeBanner(bgonggao);
		return "savesuccess";
	}
}
