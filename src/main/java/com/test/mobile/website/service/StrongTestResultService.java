package com.test.mobile.website.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.mobile.website.bean.StrongResult;
import com.test.mobile.website.dao.StrongTestResultMapper;

@Service
public class StrongTestResultService {

	
	@Autowired
	StrongTestResultMapper strongTestResultMapper;
	
	public Integer addResult(StrongResult strongResult){
		
		return strongTestResultMapper.add(strongResult);
	}
}
