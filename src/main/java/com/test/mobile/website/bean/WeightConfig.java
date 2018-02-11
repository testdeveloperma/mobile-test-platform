package com.test.mobile.website.bean;

public class WeightConfig {

	private Integer id;
	
	private Integer del;
	
	private Integer changeType;
	
	private Integer changeValue;
	
	private Integer emptyValue;

	private String jsonStr;
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getDel() {
		return del;
	}

	public void setDel(Integer del) {
		this.del = del;
	}

	public Integer getChangeType() {
		return changeType;
	}

	public void setChangeType(Integer changeType) {
		this.changeType = changeType;
	}

	public Integer getChangeValue() {
		return changeValue;
	}

	public void setChangeValue(Integer changeValue) {
		this.changeValue = changeValue;
	}

	public Integer getEmptyValue() {
		return emptyValue;
	}

	public void setEmptyValue(Integer emptyValue) {
		this.emptyValue = emptyValue;
	}

	@Override
	public String toString() {
		return "WeightConfig [id=" + id + ", del=" + del + ", changeType=" + changeType + ", changeValue=" + changeValue
				+ ", emptyValue=" + emptyValue + "]";
	}

	public String getJsonStr() {
		return jsonStr;
	}

	public void setJsonStr(String jsonStr) {
		this.jsonStr = jsonStr;
	}

	
	
	
	
	
	
}
