package com.neusoft.train.demo.aop.dynamic.target.impl;

import com.neusoft.train.demo.aop.dynamic.target.DemoTarget;

/**
 * 被代理对象实现
 *
 * @author tangwei
 * @created on 2016-08-17 10:29
 */
public class  DemoTargetImpl implements DemoTarget {

	public void say() {
		System.out.println("我是被代理的对象。。。。");
	}
}
