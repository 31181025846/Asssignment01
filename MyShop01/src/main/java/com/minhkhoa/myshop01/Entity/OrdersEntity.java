package com.minhkhoa.myshop01.Entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "orders")
public class OrdersEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "dd-MM-yyyy hh:mm:ss")
	private Date orders_date;

	public OrdersEntity() {
		super();
	}

	public OrdersEntity(Long id, Date orders_date) {
		super();
		this.id = id;
		this.orders_date = orders_date;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getOrders_date() {
		return orders_date;
	}

	public void setOrders_date(Date orders_date) {
		this.orders_date = orders_date;
	}

	@Override
	public String toString() {
		return this.getId() + "," + this.getOrders_date();
	}

	// Relation to Order detail
	@OneToMany(mappedBy = "orders", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Collection<OrderDetailEntity> orderDetails;

	// Relation to Customer
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "customer_id", nullable = false)
	private CustomerEntity customers;
}
