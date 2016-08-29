package com.neusoft.train.demo.annotations.service.impl;

import com.neusoft.train.demo.annotations.dao.impl.DemoDaoImpl;
import com.neusoft.train.demo.annotations.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

/**
 * @author tangwei
 * @created on 2016-08-16 15:59
 */
public class DemoServiceImpl2 implements DemoService {
	private DemoDaoImpl demoDao;
	public void testService() {
		System.out.println("set方法注入。。。。");
		demoDao.testDao();

	}


	public DemoDaoImpl getDemoDao() {
		return demoDao;
	}

	@Autowired(required = false)
	@Qualifier("demoDao")
	public void setDemoDao1(DemoDaoImpl demoDao) {
		this.demoDao = demoDao;
	}
}
