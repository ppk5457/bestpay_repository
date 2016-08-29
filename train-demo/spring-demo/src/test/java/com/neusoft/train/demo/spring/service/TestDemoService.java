package com.neusoft.train.demo.spring.service;

import com.neusoft.train.demo.spring.service.impl.DemoServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * spring测试service单元测试
 *
 * @author tangwei
 * @created on 2016-08-16 10:29
 */
public class TestDemoService {

	@Test
	public void  testService(){
		//加载spring配置文件
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		//调用service
		DemoService demoService =context.getBean("demoServiceImpl", DemoServiceImpl.class);
		//调用引用了dao的方法
		demoService.testService();
	}
}
