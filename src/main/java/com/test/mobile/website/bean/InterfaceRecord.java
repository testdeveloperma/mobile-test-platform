package com.test.mobile.website.bean;

public class InterfaceRecord {

	private String id;	
	
	private String url; // 请求path,包括get请求参数，不包含目标host

	private String method; // 请求方式，GET or POST

	private String requestHeader; // 请求header

	private String requestParam; // 请求参数
	
	private String responseResult;  // 返回结果
	
	private String responseHeader;  
	
	private int responseCode;  // 响应状态码

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getRequestHeader() {
		return requestHeader;
	}

	public void setRequestHeader(String requestHeader) {
		this.requestHeader = requestHeader;
	}

	public String getRequestParam() {
		return requestParam;
	}

	public void setRequestParam(String requestParam) {
		this.requestParam = requestParam;
	}

	public String getResponseResult() {
		return responseResult;
	}

	public void setResponseResult(String responseResult) {
		this.responseResult = responseResult;
	}

	public String getResponseHeader() {
		return responseHeader;
	}

	public void setResponseHeader(String responseHeader) {
		this.responseHeader = responseHeader;
	}

	public int getResponseCode() {
		return responseCode;
	}

	public void setResponseCode(int responseCode) {
		this.responseCode = responseCode;
	}
	
	
	
}
