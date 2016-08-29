package com.neusoft.train.demo.aop.dynamic.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * InvocationHandler接口实现
 *
 * @author tangwei
 * @created on 2016-08-17 10:11
 */
public class DemoInvocationHandler implements InvocationHandler {
	//被代理的对象
	 private  Object target;

	/**
	 * 构造方法
	 * @param target  被代理的对象
	 */
	public  DemoInvocationHandler(Object target){
		super();
		this.target=target;
	}

	/**
	 * 执行被代理对象的方法
	 * @param proxy
	 * @param method
	 * @param args
	 * @return
	 * @throws Throwable
	 */
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        //被代理对象方法执行前打印
		System.out.println("before:被代理对象方法执行前打印。。。。。。。");
		// 执行被代理对象的方法
		Object result = method.invoke(target, args);
		//被代理对象方法执后前打印
		System.out.println("after:被代理对象方法执行后打印。。。。。。。");
		return result;
	}

	/**
	 * 获取被代理对象的代理对象
	 * @return
	 */
	public Object getProxy() {
		return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(),
				target.getClass().getInterfaces(), this);
	}


}
