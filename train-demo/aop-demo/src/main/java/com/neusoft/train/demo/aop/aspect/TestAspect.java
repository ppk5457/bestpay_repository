package com.neusoft.train.demo.aop.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

/**
 * 测试切面(基于xml配置方式)
 *
 * @author tangwei
 * @created on 2016-08-17 14:42
 */
public class TestAspect {

	//最终通知
	public void doAfter(JoinPoint jp) {
		System.out.println("最终通知: " + jp.getTarget().getClass().getName() + "." + jp.getSignature().getName());
	}

	//环绕通知
	public Object doAround(ProceedingJoinPoint pjp) throws Throwable {
		long time = System.currentTimeMillis();
		Object retVal = pjp.proceed();
		time = System.currentTimeMillis() - time;
		System.out.println("环绕通知 process time: " + time + " ms");
		return retVal;
	}
	//前置通知
	public void doBefore(JoinPoint jp) {
		System.out.println("前置通知: " + jp.getTarget().getClass().getName() + "." + jp.getSignature().getName());
	}

	//后置通知
	public void afterReturn(JoinPoint jp) {
		System.out.println("后置通知: " + jp.getTarget().getClass().getName() + "." + jp.getSignature().getName());
	}

	//异常通知
	public void doThrowing(JoinPoint jp, Throwable ex) {
		System.out.println("异常通知" + jp.getTarget().getClass().getName() + "." + jp.getSignature().getName() + " throw exception");
		System.out.println(ex.getMessage());
	}
}
