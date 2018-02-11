package com.test.mobile.website.controller;

public class TestThread {

	
	
	public static void main(String[] args) {
		ThreadDemo t = new ThreadDemo();
		t.run();
		System.out.println(t.getState());
	}
}
