package com.test.mobile.website.bean;

import java.util.Date;

public class WhiteList {

	private int id;
	
	private String path;
	
	private String description;
	
	private Date createTime;
	
	private String updateTime;
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	@Override
	public String toString() {
		return "WhiteList [id=" + id + ", path=" + path + ", description=" + description + ", createTime=" + createTime
				+ ", updateTime=" + updateTime + "]";
	}

	

	
	
	
}

