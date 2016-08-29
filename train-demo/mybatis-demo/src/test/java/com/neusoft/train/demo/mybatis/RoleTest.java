package com.neusoft.train.demo.mybatis;

import com.neusoft.train.demo.mybatis.entity.Order;
import com.neusoft.train.demo.mybatis.entity.Role;
import com.neusoft.train.demo.mybatis.entity.User;
import com.neusoft.train.demo.mybatis.mapper.OrderMapper;
import com.neusoft.train.demo.mybatis.mapper.RoleMapper;
import com.neusoft.train.demo.mybatis.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

/**  角色实体测试类
 * @author tangwei
 * @created on 2016-08-21 20:35
 */
public class RoleTest {

	/**
	 * 多对多查询测试
	 */
	@Test
	public void  moreToMoretest(){
		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		RoleMapper orderMapper =sqlSession.getMapper(RoleMapper.class);
		Role role =orderMapper.selectRoleById(1);
		List<User> users =role.getUsers();
		System.out.print(role.getRoleName() + ":");
		for(User user:users){
			System.out.print(user.getFullName() + " ");
		}
		//关闭
		sqlSession.close();


	}
}
