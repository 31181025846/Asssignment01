package com.minhkhoa.myshop01.entity;

import com.minhkhoa.myshop01.dto.OrderDetailDto;

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
import javax.validation.constraints.NotNull;

@Entity

@Table(name = "order_detail")
public class OrderDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "quantity", nullable = false)
	@NotNull()
	private Integer quantity;
	@Column(name = "product_price", nullable = false)
	@NotNull()
	private Integer product_price;

	public OrderDetailEntity() {
		super();
	}

	public OrderDetailEntity(Long id, Integer quantity, Integer product_price) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.product_price = product_price;
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

	public Integer getProduct_price() {
		return product_price;
	}

	public void setProduct_price(Integer product_price) {
		this.product_price = product_price;
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
		return this.getId() + "," + this.getQuantity() + "," + this.getProduct_price();
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

	// Convert to DTO
	public OrderDetailDto toDTO() {
		OrderDetailDto detailDto = new OrderDetailDto();
		detailDto.setId(this.getId());
		detailDto.setQuantity(this.getQuantity());
		detailDto.setTotal(this.getProduct_price());
		detailDto.setOrderId(this.getOrders().getId());
		detailDto.setProductId(this.getProducts().getId());
		detailDto.setShippingId(this.getShippings().getId());
		return detailDto;
	}
}
