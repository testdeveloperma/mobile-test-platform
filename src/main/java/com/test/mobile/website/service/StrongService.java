package com.test.mobile.website.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.test.mobile.website.bean.Scheme;
import com.test.mobile.website.bean.SchemeSearch;
import com.test.mobile.website.dao.StrongMapper;

@Service
public class StrongService {

	@Autowired
	StrongMapper strongMapper;
	
	public int addScheme(Scheme scheme) {
		// TODO Auto-generated method stub
		int result = strongMapper.addScheme(scheme);
		return result;
	}
	
	
	public List<Scheme> getScheme(int page,SchemeSearch search){
		
		if(page > 0 ){
			
			PageHelper.startPage(page, 10);
		}
		
		return strongMapper.getScheme(search);
	}


	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return strongMapper.deleteById(id);
	}


	public Scheme getSchemeById(int id) {
		// TODO Auto-generated method stub
		return strongMapper.getSchemeById(id);
	}


	public Integer updateScheme(Scheme scheme) {
		// TODO Auto-generated method stub
		return strongMapper.updateScheme(scheme);
	}

}
