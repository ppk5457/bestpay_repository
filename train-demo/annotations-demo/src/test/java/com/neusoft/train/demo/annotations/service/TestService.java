package com.neusoft.train.demo.annotations.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

/**
 * 测试类
 *
 * @author tangwei
 * @created on 2016-08-16 14:19
 */
public class TestService extends BaseSpringTest{
	@Autowired(required = false)
	@Qualifier("demoService1")
	private DemoService demoService1;

	@Autowired(required = false)
	@Qualifier("demoService2")
	private DemoService demoService2;

	@Autowired(required = false)
	@Qualifier("demoService3")
	private DemoService demoService3;

	@Test
	public void testServie1(){
		demoService1.testService();
	}

	@Test
	public void testServie2(){
		demoService2.testService();
	}
	@Test
	public void testServie3(){
		demoService3.testService();
	}
}
