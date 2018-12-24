package com.minions.biz;

import java.util.List;

import com.minions.entity.Shouyebanner;

public interface ShouyebannerBiz {
	public List<Shouyebanner> findAllBanner();
	public Shouyebanner findBannerByTypeName(String typeName);
	public void updateShouyeBanner(Shouyebanner shouyebanner);

}
