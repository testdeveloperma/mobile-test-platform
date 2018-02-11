package com.test.mobile.website.dao;

import java.util.List;

import com.test.mobile.website.bean.WhiteList;

public interface WhiteListMapper {

	
	
	public List<WhiteList> getAll();
	
	public List<String> getPath();
	
	public Integer add(WhiteList whiteList);

	public WhiteList getWhiteListById(Integer id);

	public Integer deleteWhiteListById(Integer id);
	
}
