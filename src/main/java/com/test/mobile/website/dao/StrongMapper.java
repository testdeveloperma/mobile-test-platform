package com.test.mobile.website.dao;

import java.util.List;

import com.test.mobile.website.bean.Scheme;
import com.test.mobile.website.bean.SchemeSearch;

public interface StrongMapper {

	public int addScheme(Scheme scheme);
	
	public List<Scheme> getScheme(SchemeSearch search);

	public Integer deleteById(int id);

	public Scheme getSchemeById(int id);

	public Integer updateScheme(Scheme scheme);
}
