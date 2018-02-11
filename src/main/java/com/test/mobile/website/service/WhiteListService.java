package com.test.mobile.website.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.test.mobile.website.bean.Msg;
import com.test.mobile.website.bean.WhiteList;
import com.test.mobile.website.dao.WhiteListMapper;

@Service
public class WhiteListService {

	@Autowired
	WhiteListMapper whiteListMapper;

	public List<String> getPath() {

		List<String> whiteList = whiteListMapper.getPath();

		return whiteList;

	}

	public List<WhiteList> getAll(Integer page) {
		PageHelper.startPage(page, 10);
		List<WhiteList> whitelists = whiteListMapper.getAll();
		
		DateFormatter dateFormatter = new DateFormatter("");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		for (WhiteList whiteList : whitelists) {
			whiteList.setUpdateTime(sdf.format(whiteList.getCreateTime()));
		}
		
		
		return  whitelists;

		
	}

	public Integer addWhiteList(WhiteList whiteList) {

		return whiteListMapper.add(whiteList);

	}

	public WhiteList getWhiteListById(Integer id) {
		
		WhiteList whiteList = whiteListMapper.getWhiteListById(id);
		
		
		
		
		return whiteList;
	}

	public Integer deleteWhiteListById(Integer id) {
		// TODO Auto-generated method stub
		return whiteListMapper.deleteWhiteListById(id);
	}

}
