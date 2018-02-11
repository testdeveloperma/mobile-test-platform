package com.test.mobile.website.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.test.mobile.website.bean.WeightConfig;
import com.test.mobile.website.dao.WeightConfigMapper;

@Service
public class WeightConfigService {

	
	@Autowired
	WeightConfigMapper weightConfigMapper;
	
	public List<WeightConfig> getAll(){
		
		
		return weightConfigMapper.getAll();
	}
	
	public Integer save(WeightConfig weightConfig){
		String jsonString = JSONObject.toJSONString(weightConfig);
		weightConfig.setJsonStr(jsonString);
		
		return weightConfigMapper.save(weightConfig);
	}
	 
	
	
	
}
