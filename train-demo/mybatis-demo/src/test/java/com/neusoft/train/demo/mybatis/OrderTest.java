package com.neusoft.train.demo.mybatis;

import com.neusoft.train.demo.mybatis.entity.Order;
import com.neusoft.train.demo.mybatis.entity.User;
import com.neusoft.train.demo.mybatis.mapper.OrderMapper;
import com.neusoft.train.demo.mybatis.mapper.UserMapper;
import com.neusoft.train.demo.mybatis.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

/**
 * @author tangwei
 * @created on 2016-08-21 16:36
 */
public class OrderTest {

	@Test
	public void  test(){

		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		OrderMapper orderMapper =sqlSession.getMapper(OrderMapper.class);
		Order order =orderMapper.selectOrderbyId(1);
		User user =order.getUser();
		System.out.println(user.getUserName());

	}
}
