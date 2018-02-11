package com.test.mobile.website.bean;

import java.util.Date;

public class TestTaskDetail {

	private Integer id;
	
	private Scheme scheme;
	
	private WeightConfig weightConfig;
	
	private WeightJSON weightJSON;
	
	private int times;
	
	private Date createTime;

	private StateEnum state;  //waiting、等待执行  running、正在执行  end、执行完成
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Scheme getScheme() {
		return scheme;
	}

	public void setScheme(Scheme scheme) {
		this.scheme = scheme;
	}

	public WeightConfig getWeightConfig() {
		return weightConfig;
	}

	public void setWeightConfig(WeightConfig weightConfig) {
		this.weightConfig = weightConfig;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public WeightJSON getWeightJSON() {
		return weightJSON;
	}

	public void setWeightJSON(WeightJSON weightJSON) {
		this.weightJSON = weightJSON;
	}

	public StateEnum getState() {
		return state;
	}

	public void setState(StateEnum state) {
		this.state = state;
	}

	

	
	
	
	
	
	
	
	
	
	
}
