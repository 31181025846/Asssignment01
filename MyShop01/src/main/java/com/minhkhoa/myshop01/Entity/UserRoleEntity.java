package com.minhkhoa.myshop01.Entity;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "user_role")
public class UserRoleEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "name", length = 50, nullable = false)
	private String user_role_name;

	public UserRoleEntity() {
		super();
	}

	public UserRoleEntity(Long id, String user_role_name) {
		super();
		this.id = id;
		this.user_role_name = user_role_name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUser_role_name() {
		return user_role_name;
	}

	public void setUser_role_name(String user_role_name) {
		this.user_role_name = user_role_name;
	}
	
	@Override
	public String toString()
	{
		return this.getId()+","+this.getUser_role_name();
	}

	

	//Relation: to user

	@OneToMany(mappedBy="userRoles",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Collection<UsersEntity> users;
}
