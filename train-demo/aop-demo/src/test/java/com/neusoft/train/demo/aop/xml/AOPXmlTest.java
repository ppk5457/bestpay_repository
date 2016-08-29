package com.neusoft.train.demo.aop.xml;

import com.neusoft.train.demo.aop.service.AOPDemoService;
import com.neusoft.train.demo.aop.service.impl.AOPDemoServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author tangwei
 * @created on 2016-08-17 15:11
 */
public class AOPXmlTest {

	@Test
	public void xmlWayAOPTest(){
		//加载spring配置文件
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		//调用service
		AOPDemoService aopDemoService =context.getBean("demoService", AOPDemoServiceImpl.class);
		//调用引用了dao的方法
		try {
			aopDemoService.testAOP();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
