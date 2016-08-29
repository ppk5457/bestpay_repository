package com.neusoft.train.demo.scan.service;

import com.neusoft.train.demo.scan.service.impl.ScanDemoServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author tangwei
 * @created on 2016-08-16 17:38
 */
public class ScanTest {

	@Test
	public void  testScanService(){
		//加载spring配置文件
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		//调用service
		ScanDemoService scanDemoService =context.getBean("scanService", ScanDemoServiceImpl.class);
		//调用引用了dao的方法
		scanDemoService.scanDemoTest();
	}
}
