package com.test.mobile.website.bean;

public class StrongResult {

	
	private Integer id;
	
	private Integer taskId;
		
	private String picturePath;
	
	private String crashPath;
	
	private String crashDetail;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	public String getPicturePath() {
		return picturePath;
	}

	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}

	public String getCrashPath() {
		return crashPath;
	}

	public void setCrashPath(String crashPath) {
		this.crashPath = crashPath;
	}

	public String getCrashDetail() {
		return crashDetail;
	}

	public void setCrashDetail(String crashDetail) {
		this.crashDetail = crashDetail;
	}

	@Override
	public String toString() {
		return "StrongResult [id=" + id + ", taskId=" + taskId + ", picturePath=" + picturePath + ", crashPath="
				+ crashPath + ", crashDetail=" + crashDetail + "]";
	}	
	
	
	
}
