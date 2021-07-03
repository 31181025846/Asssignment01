package com.minhkhoa.myshop01.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class UsersEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "username", length = 30, nullable = false)
	private String username;
	@Column(name = "pasword_Hash", length = 30, nullable = false)
	private String password;

	// Constructor
	public UsersEntity() {
		super();
	}

	public UsersEntity(Long id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	//RElation to Customer
	@OneToOne(mappedBy = "users")
	private CustomerEntity customers;
	
	//Relation: to role
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name ="userr_role_id", nullable = false)
	private UserRoleEntity userRoles;

}
