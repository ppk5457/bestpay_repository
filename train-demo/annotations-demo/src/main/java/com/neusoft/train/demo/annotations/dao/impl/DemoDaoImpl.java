package com.neusoft.train.demo.annotations.dao.impl;

import com.neusoft.train.demo.annotations.dao.DemoDao;

/**
 * Autowired注解测试dao实现类
 *
 * @author tangwei
 * @created on 2016-08-16 13:57
 */

public class DemoDaoImpl implements DemoDao {
	public void testDao() {
		System.out.println("@Autowired注解测试dao...... ");
	}
}
