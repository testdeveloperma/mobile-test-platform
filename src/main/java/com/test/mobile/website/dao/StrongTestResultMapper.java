package com.test.mobile.website.dao;

import java.util.List;

import com.test.mobile.website.bean.StrongResult;

public interface StrongTestResultMapper {

	
	
	public Integer add(StrongResult strongResult);
	
	public List<StrongResult> getStrongResultByTaskId(Integer taskId);

	public Integer getMaxId();
	
	
}
