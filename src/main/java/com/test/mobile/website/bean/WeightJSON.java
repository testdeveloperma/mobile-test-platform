package com.test.mobile.website.bean;

public class WeightJSON {

	private Integer id;
	
	private String weightJsonStr;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getWeightJsonStr() {
		return weightJsonStr;
	}

	public void setWeightJsonStr(String weightJsonStr) {
		this.weightJsonStr = weightJsonStr;
	}

	@Override
	public String toString() {
		return "WeightJSON [id=" + id + ", weightJsonStr=" + weightJsonStr + "]";
	}
	
	
	
}
