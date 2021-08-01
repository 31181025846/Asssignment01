package com.minhkhoa.myshop01.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import com.minhkhoa.myshop01.dto.CustomerDto;

@Entity
@Table(name = "customer")
public class CustomerEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "name", length = 50, nullable = false)
	@NotNull(message = "Không được để trống tên khách hàng!")
	private String name;
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "dd-MM-yyyy hh:mm:ss")
	@NotNull(message = "Không được để trống ngày sinh!")
	private Date date_of_birth;
	@Column(name = "mobile", length = 12, nullable = false)
	@NotNull(message = "Không được để trống Số điện thoại!")
	private String mobile;
	@Column(name = "city", length = 100, nullable = false)
	@NotNull(message = "Không được để trống địa chỉ!")
	private String city;
	@Column(name = "email", length = 30, nullable = false)
	@NotNull(message = "Không được để trống email!")
	private String email;

	public CustomerEntity() {
		super();
	}

	public CustomerEntity(Long id, String name, Date date_of_birth, String mobile, String city, String email) {
		super();
		this.id = id;
		this.name = name;
		this.date_of_birth = date_of_birth;
		this.mobile = mobile;
		this.city = city;
		this.email = email;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDate_of_birth() {
		return date_of_birth;
	}

	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	////////////////////////////////////////////////////////////////////////////////////

	@Override
	public String toString() {
		return this.getId() + "," + this.getName() + "," + this.getDate_of_birth() + "," + this.getMobile() + ","
				+ this.getCity() + "," + this.getEmail();
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	// Relation to order
	@OneToMany(mappedBy = "customers", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Collection<OrdersEntity> orders;

	// Relation to user
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id", nullable = false)
	private User users;

	// Conver to DTO
	public CustomerDto toDTO() {
		CustomerDto customerDto = new CustomerDto();
		customerDto.setId(this.getId());
		customerDto.setName(this.getName());
		customerDto.setDate_of_birth(this.getDate_of_birth());
		customerDto.setMobile(this.getMobile());
		customerDto.setCity(this.getCity());
		customerDto.setEmail(this.getEmail());
		customerDto.setUsersid(this.getUsers().getId());
		return customerDto;
	}
}
