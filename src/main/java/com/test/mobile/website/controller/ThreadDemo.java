package com.test.mobile.website.controller;

public class ThreadDemo extends Thread {

	 
	
	public void run(){
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("are you ready?");
	}
}
