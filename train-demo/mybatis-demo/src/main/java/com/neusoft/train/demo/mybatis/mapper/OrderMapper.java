package com.neusoft.train.demo.mybatis.mapper;

import com.neusoft.train.demo.mybatis.entity.Order;

public interface OrderMapper {

	/**
	 * 根据主键查询
     * @param orderid
     * @return
     */
    Order selectOrderbyId(Integer orderid);

}