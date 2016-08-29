package com.neusoft.train.demo.aop.service.impl;

import com.neusoft.train.demo.aop.service.AOPDemoService;

/** AOP测试service(目标对象，基于java动态代理)
 * @author tangwei
 * @created on 2016-08-17 14:33
 */
public class AOPDemoServiceImpl implements AOPDemoService {

	public void testAOP() throws Exception {
		System.out.println("AOP基于java动态代理实现。。。。");
		//测试异常通知
		//throw new RuntimeException("故意抛出一个异常。。。。");


	}
}
