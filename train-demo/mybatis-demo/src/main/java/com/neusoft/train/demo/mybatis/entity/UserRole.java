package com.neusoft.train.demo.mybatis.entity;

/**
 * @author tangwei
 * @created on 2016-08-21 20:07
 */
public class UserRole {
	private String  relationId;
	private User    user;
	private Role    role;

	public String getRelationId() {
		return relationId;
	}

	public void setRelationId(String relationId) {
		this.relationId = relationId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
}
