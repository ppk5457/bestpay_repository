package com.neusoft.train.demo.spring.service.impl;

import com.neusoft.train.demo.spring.dao.DemoDao;
import com.neusoft.train.demo.spring.service.DemoService;

/**
 * spring测试service实现类
 *
 * @author tangwei
 * @created on 2016-08-16 10:09
 */
public class DemoServiceImpl implements DemoService {

	private DemoDao demoDao;

	public String testService() {
		System.out.println("由spring依赖注入调用dao开始：");
		demoDao.testDao();
		System.out.println("由spring依赖注入调用dao结束：");

		return null;
	}

	//生成get 、set方法(必须要有)

	public DemoDao getDemoDao() {
		return demoDao;
	}

	public void setDemoDao(DemoDao demoDao) {
		this.demoDao = demoDao;
	}
}
