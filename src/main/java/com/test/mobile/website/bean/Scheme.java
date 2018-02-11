package com.test.mobile.website.bean;

import org.hibernate.validator.constraints.NotEmpty;

public class Scheme {

	private int id;
	
	private String businessLine;
	
	private String pageName;
	
	private String clientType;
	
	
	@NotEmpty(message="页面路由不能为空")
	private String schemeUrl;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBusinessLine() {
		return businessLine;
	}

	public void setBusinessLine(String businessLine) {
		this.businessLine = businessLine;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

	public String getClientType() {
		return clientType;
	}

	public void setClientType(String clientType) {
		this.clientType = clientType;
	}

	public String getSchemeUrl() {
		return schemeUrl;
	}

	public void setSchemeUrl(String schemeUrl) {
		this.schemeUrl = schemeUrl;
	}

	@Override
	public String toString() {
		return "Scheme [id=" + id + ", businessLine=" + businessLine + ", pageName=" + pageName + ", clientType="
				+ clientType + ", schemeUrl=" + schemeUrl + "]";
	}
	
}
