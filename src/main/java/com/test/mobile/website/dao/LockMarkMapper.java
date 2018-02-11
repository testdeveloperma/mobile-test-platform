package com.test.mobile.website.dao;

import com.test.mobile.website.bean.LockMark;
import com.test.mobile.website.bean.WorkerName;

public interface LockMarkMapper {

	
	public LockMark getAll();
	
	public LockMark getLockMarkByName(WorkerName workerName);
	
	public Integer updateState(LockMark strongLockMark);
	
	
	
}
