package com.neusoft.train.demo.aop.annotation;

import com.neusoft.train.demo.aop.service.AOPDemoService;
import com.neusoft.train.demo.aop.service.AOPDemoService2;
import com.neusoft.train.demo.aop.service.impl.AOPDemoServiceImpl;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author tangwei
 * @created on 2016-08-17 15:11
 */
public class AOPAnnotationlTest {
	/*Autowired
	AOPDemoService2 aopDemoService2;*/
	public static  ApplicationContext context;
	static {
		//加载spring配置文件
	context = new ClassPathXmlApplicationContext("applicationContext-annotation.xml");

	}

	@Test
	public void annotationAOPTest(){
		/*ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-annotation.xml");*/
		AOPDemoService aopDemoService =context.getBean("demoService", AOPDemoServiceImpl.class);
		try {
			aopDemoService.testAOP();
		} catch (Exception e) {
			e.printStackTrace();
		}
	/*	try {
			aopDemoService2.cglibTest("1");
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}*/
	}

	@Test
	public void annotationAOPTest2(){
		/*ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-annotation.xml");*/
		AOPDemoService2 aopDemoService2 =context.getBean("demoService2", AOPDemoService2.class);

		try {
			aopDemoService2.cglibTest("1");
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
	}
}
