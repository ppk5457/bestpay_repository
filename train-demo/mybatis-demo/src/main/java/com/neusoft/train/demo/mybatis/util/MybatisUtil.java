package com.neusoft.train.demo.mybatis.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

/**
 * mybatis工具类
 *
 * @author tangwei
 * @created on 2016-08-18 11:25
 */
public class MybatisUtil {

	private static SqlSessionFactory sqlSessionFactory;

	//初始化SqlSessionFactory
	static {
		//mybatis配置文件路径
		String configPath = "mybatis-config.xml";
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(configPath);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			System.out.println("mybatis配置文件读取失败:" + e.getStackTrace());
		}
	}

	/**
	 * 获取SqlSessionFactory
	 *
	 * @return
	 */
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}
