package com.test.mobile.website.dao;

import java.util.List;

import com.test.mobile.website.bean.WeightConfig;




public interface WeightConfigMapper {

	
	public Integer save(WeightConfig weightConfig);
	
	public List<WeightConfig> getAll();
	
	
}
