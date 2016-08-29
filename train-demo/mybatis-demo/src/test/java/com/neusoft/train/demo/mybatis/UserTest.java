package com.neusoft.train.demo.mybatis;

import com.neusoft.train.demo.mybatis.entity.Order;
import com.neusoft.train.demo.mybatis.entity.User;
import com.neusoft.train.demo.mybatis.mapper.UserMapper;
import com.neusoft.train.demo.mybatis.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;
import java.util.Map;

/**
 * @author tangwei
 * @created on 2016-08-19 10:05
 */
public class UserTest {

	/**
	 * 新增并自动生成主键
	 */
	@Test
	public void TestInsertUserByGeneratedKeys(){
		User  user  = new User();
		//user.setUserid(1);
		user.setUserName("zhangsan");
		user.setFullName("张三");
		user.setPassword("123456");
		user.setSex("1");
		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		UserMapper userMapper =sqlSession.getMapper(UserMapper.class);
		int i =userMapper.insertUserGenerate(user);
		sqlSession.commit();
		System.out.println("影响的行数："+ i);
	}


	@Test
	public void selectAll(){

		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		UserMapper userMapper =sqlSession.getMapper(UserMapper.class);
		List<User> userList = userMapper.selectUserAll();
	    for(User user:userList){
			System.out.println(user.getUserName());
			System.out.println("---------------");
		}

		}


	@Test
	 public void selectById() {

		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		User user = userMapper.selectUserById(1);
		System.out.println(user.getUserName());

	}

	@Test
	public void batchInsert() {

		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		User user1 = new User();
		user1.setUserId(3);
		user1.setFullName("wangwu");
		user1.setUserName("wanwu");
		User user2 = new User();
		user2.setUserId(4);
		user2.setFullName("wangwu");
		user2.setUserName("wanwu");


		User user = userMapper.selectUserById(1);
		System.out.println(user.getUserName());

	}
	@Test
	public void selectOneToMore(){

		SqlSession sqlSession = MybatisUtil.getSqlSessionFactory().openSession();
		UserMapper userMapper =sqlSession.getMapper(UserMapper.class);
		 User user= userMapper.selectUserOneToMoreById(1);
		 List<Order> orders = user.getOrders();
		for(Order order:orders){
			System.out.println(user.getUserName()+" ，订单号：" +  order.getOrderId());
		}


	}

}

