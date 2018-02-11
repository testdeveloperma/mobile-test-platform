package com.test.mobile.website.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.mobile.website.bean.LockMark;
import com.test.mobile.website.bean.WorkerName;
import com.test.mobile.website.dao.LockMarkMapper;

@Service
public class LockMarkService {

	
	@Autowired
	LockMarkMapper lockMarkMapper;
	
	
	public LockMark getAll(){
		
		return lockMarkMapper.getAll();
	
	}
	
	
	public LockMark getLockMarkByName(WorkerName workerName){
		
		
		return lockMarkMapper.getLockMarkByName(workerName);
	}
	
	
	public Integer updateState(LockMark strongLockMark){
		
		return lockMarkMapper.updateState(strongLockMark);
	}
	
	
}
