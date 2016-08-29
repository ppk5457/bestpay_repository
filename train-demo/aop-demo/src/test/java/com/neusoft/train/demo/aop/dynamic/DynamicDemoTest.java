package com.neusoft.train.demo.aop.dynamic;

import com.neusoft.train.demo.aop.dynamic.proxy.DemoInvocationHandler;
import com.neusoft.train.demo.aop.dynamic.target.DemoTarget;
import com.neusoft.train.demo.aop.dynamic.target.impl.DemoTargetImpl;
import org.junit.Test;

import java.lang.reflect.InvocationHandler;

/**
 * 动态代理实现测试
 *
 * @author tangwei
 * @created on 2016-08-17 10:51
 */
public class DynamicDemoTest {

	@Test
	public void  dynamicProxyTest(){
		//被代理对象实例化
		DemoTarget target = new DemoTargetImpl();
		//实例化InvocationHandler, 传入被代理对象
		DemoInvocationHandler demoInvocationHandler =new DemoInvocationHandler(target);
		// 生成代理对象
		DemoTarget  proxy =(DemoTarget)demoInvocationHandler.getProxy();
		//调用代理对象方法
		proxy.say();


	}
}
