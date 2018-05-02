package com.test.mobile.website.bean;

public class InterfaceRecord {

	private String id;	
	
	private String url; // ����path,����get���������������Ŀ��host

	private String method; // ����ʽ��GET or POST

	private String requestHeader; // ����header

	private String requestParam; // �������
	
	private String responseResult;  // ���ؽ��
	
	private String responseHeader;  
	
	private int responseCode;  // ��Ӧ״̬��

	private Integer sresultId;  //报告id
	
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

	public Integer getSresultId() {
		return sresultId;
	}

	public void setSresultId(Integer sresultId) {
		this.sresultId = sresultId;
	}
	
	
	
}
