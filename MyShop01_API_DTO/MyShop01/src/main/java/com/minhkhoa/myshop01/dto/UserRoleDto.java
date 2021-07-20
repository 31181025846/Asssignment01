package com.minhkhoa.myshop01.dto;

import com.minhkhoa.myshop01.entity.RoleName;

public class UserRoleDto {
	private Long id;
	private RoleName name;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public RoleName getName() {
		return name;
	}

	public void setName(RoleName name) {
		this.name = name;
	}

	
}
