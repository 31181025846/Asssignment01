package com.minhkhoa.myshop01.Entity;

import javax.persistence.CascadeType;
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

@Table(name = "order_detail")
public class OrderDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "quantity", nullable = false)
	private Integer quantity;
	@Column(name = "total", nullable = false)
	private Integer total;
	

	public OrderDetailEntity() {
		super();
	}

	public OrderDetailEntity(Long id, Integer quantity, Integer total) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.total = total;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	///////////////////////////////////////////////////////////////////
	public ProductEntity getProducts() {
		return products;
	}

	public void setProducts(ProductEntity products) {
		this.products = products;
	}

	public OrdersEntity getOrders() {
		return orders;
	}

	public void setOrders(OrdersEntity orders) {
		this.orders = orders;
	}

	public ShippingEntity getShippings() {
		return shippings;
	}

	public void setShippings(ShippingEntity shippings) {
		this.shippings = shippings;
	}

	
	//////////////////////////////////////////////////////////////////////////////////////

	@Override
	public String toString() {
		return this.getId() + "," + this.getQuantity() + "," + this.getTotal();
	}

	// Relation to product
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id", nullable = false)
	private ProductEntity products;

	// Relation to orders
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "order_id", nullable = false)
	private OrdersEntity orders;

	// Relation to shipping
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "shipping_id", nullable = false)
	private ShippingEntity shippings;

	// RElation to tran_status
	@OneToOne(mappedBy = "orderDetails")
	private TransactionStatusEntity transactionStatus;
}
