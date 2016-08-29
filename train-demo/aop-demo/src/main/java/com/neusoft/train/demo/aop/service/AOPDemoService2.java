package com.neusoft.train.demo.aop.service;

/**
 *  AOP基于cglib方式
 * @author tangwei
 * @created on 2016-08-17 16:12
 */
public class AOPDemoService2 {
	public  void  cglibTest(String type) throws Exception {
		System.out.println("基于cglib方式实现");
		if("1".equals(type)){
			throw  new Exception("AOP基于cglib方式:抛出异常。。。。。  ");
		}
	}
}
