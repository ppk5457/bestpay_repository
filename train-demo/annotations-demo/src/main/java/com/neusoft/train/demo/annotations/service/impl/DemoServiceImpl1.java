package com.neusoft.train.demo.annotations.service.impl;

import com.neusoft.train.demo.annotations.dao.impl.DemoDaoImpl;
import com.neusoft.train.demo.annotations.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

/**
 * @author tangwei
 * @created on 2016-08-16 15:18
 */
public class DemoServiceImpl1 implements DemoService {

	@Autowired(required = false)
	@Qualifier("demoDao")
	private DemoDaoImpl demoDao1;
	public void testService() {
		demoDao1.testDao();
	}
}
