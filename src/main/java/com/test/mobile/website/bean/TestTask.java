package com.test.mobile.website.bean;

import java.util.Date;

public class TestTask {

	private Integer id;
	
	private Integer schemeId;
	
	private Integer weightconfigId;
	
	private int times;
	
	private Date create_time;
	
	private StateEnum state; //waiting running end

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSchemeId() {
		return schemeId;
	}

	public void setSchemeId(Integer schemeId) {
		this.schemeId = schemeId;
	}

	public Integer getWeightconfigId() {
		return weightconfigId;
	}

	public void setWeightconfigId(Integer weightconfigId) {
		this.weightconfigId = weightconfigId;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}


	public StateEnum getState() {
		return state;
	}

	public void setState(StateEnum state) {
		this.state = state;
	}

	
	
	
	
	
	
	
	
	
}
