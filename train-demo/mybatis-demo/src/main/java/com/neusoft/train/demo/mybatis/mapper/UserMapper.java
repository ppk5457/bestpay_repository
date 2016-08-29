package com.neusoft.train.demo.mybatis.mapper;

import com.neusoft.train.demo.mybatis.entity.User;

import java.util.List;

public interface UserMapper {
	/**
	 * 根据主键查询
	 *
	 * @param userId
	 * @return
	 */
	User selectUserById(Integer userId);

	/**
	 * 查询所有
	 *
	 * @return
	 */
	List<User> selectUserAll();

	/**
	 * 根据主键删除
	 *
	 * @param userId
	 * @return
	 */
	int deleteUserById(Integer userId);

	/**
	 * 批量删除
	 *
	 * @param userIdList
	 * @return
	 */
	int deleteUserBatch(List<Integer> userIdList);

	/**
	 * 新增
	 *
	 * @param user
	 * @return
	 */
	int insertUser(User user);

	/**
	 * 新增并自动生成主键
	 *
	 * @param user
	 * @return
	 */
	int insertUserGenerate(User user);

	/**
	 * 动态新增
	 *
	 * @param record
	 * @return
	 */
	int insertUserDynamic(User record);

	/**
	 * 批量新增
	 *
	 * @param userList
	 * @return
	 */
	User insertUserBatch(List<User> userList);

	/**
	 * 动态更新
	 *
	 * @param user
	 * @return
	 */
	int updateUserDynamic(User user);

	/**
	 * 根据主键更新
	 *
	 * @param record
	 * @return
	 */
	int updateUserById(User record);

	/**
	 * 批量更新
	 *
	 * @param userIdList
	 * @return
	 */
	int updateUserBatch(List<Integer> userIdList);


	/**
	 * 一对多查询
	 * @param userId
	 * @return
	 */
	User selectUserOneToMoreById(Integer userId);


}