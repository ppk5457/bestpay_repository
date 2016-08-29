package com.neusoft.train.demo.annotations.service.impl;

import com.neusoft.train.demo.annotations.dao.DemoDao;
import com.neusoft.train.demo.annotations.dao.impl.DemoDaoImpl;
import com.neusoft.train.demo.annotations.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

/**
 * @author tangwei
 * @created on 2016-08-16 15:59
 */
public class DemoServiceImpl3 implements DemoService {
	private DemoDao demoDao;
	public void testService() {
     System.out.println("构造方法注入");
		demoDao.testDao();
	}

	@Autowired(required = false)
	public DemoServiceImpl3(@Qualifier("demoDao")DemoDao demoDao){
		this.demoDao =demoDao;
	}
}
