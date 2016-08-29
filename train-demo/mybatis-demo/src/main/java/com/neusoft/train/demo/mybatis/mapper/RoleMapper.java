package com.neusoft.train.demo.mybatis.mapper;

import com.neusoft.train.demo.mybatis.entity.Role;

public interface RoleMapper {

    Role selectRoleById(Integer roleid);
}