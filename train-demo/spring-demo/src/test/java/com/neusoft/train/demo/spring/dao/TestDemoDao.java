package com.neusoft.train.demo.spring.dao;

import com.neusoft.train.demo.spring.dao.impl.DemoDaoImpl;
import com.neusoft.train.demo.spring.service.DemoService;
import com.neusoft.train.demo.spring.service.impl.DemoServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * spring测试dao单元测试
 *
 * @author tangwei
 * @created on 2016-08-16 10:49
 */
public class TestDemoDao {

	@Test
	public void  testDao(){
		//加载spring配置文件
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		//调用Dao
		DemoDao demoDao =context.getBean("demoDaoImpl", DemoDaoImpl.class);
		demoDao.testDao();

	}
}
