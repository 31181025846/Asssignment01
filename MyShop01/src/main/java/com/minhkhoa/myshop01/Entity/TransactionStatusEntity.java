package com.minhkhoa.myshop01.Entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "transaction_status")
public class TransactionStatusEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long Id;
	@Column(name = "status", length = 10, nullable = false)
	private String status;

	public TransactionStatusEntity() {
		super();
	}

	public TransactionStatusEntity(Long id, String status) {
		super();
		Id = id;
		this.status = status;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	//////////////////////////////////////////////////////////////////
	
	public OrderDetailEntity getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(OrderDetailEntity orderDetails) {
		this.orderDetails = orderDetails;
	}
//////////////////////////////////////////////////////////////////////////
	
	@Override
	public String toString() {
		return this.getId() + "," + this.getStatus();
	}

	// RElation to OrderDetail
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "order_detail_id", nullable = false)
	private OrderDetailEntity orderDetails;

}
