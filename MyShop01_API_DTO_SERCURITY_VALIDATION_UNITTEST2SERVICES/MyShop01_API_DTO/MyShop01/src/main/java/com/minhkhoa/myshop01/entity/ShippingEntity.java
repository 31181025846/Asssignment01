package com.minhkhoa.myshop01.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.minhkhoa.myshop01.dto.ShippingDto;

@Entity
@Table(name = "shipping")
public class ShippingEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "shipping_type", length = 20, nullable = false)
	@NotNull(message = "Không được để trống loại ship!")
	private String shipping_type;

	public ShippingEntity() {
		super();
	}

	public ShippingEntity(Long id, String shipping_type) {
		super();
		this.id = id;
		this.shipping_type = shipping_type;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getShipping_type() {
		return shipping_type;
	}

	public void setShipping_type(String shipping_type) {
		this.shipping_type = shipping_type;
	}

	@Override
	public String toString() {
		return this.getId() + "," + this.getShipping_type();
	}

	// Relation
	@OneToOne(mappedBy = "shippings")
	private OrderDetailEntity orderDetails;

	
	
	
	// Convert to DTO:
	public ShippingDto toDTO() {
		ShippingDto ships = new ShippingDto();
		ships.setId(this.getId());
		ships.setShipping_type(this.getShipping_type());
		return ships;
	}
}
