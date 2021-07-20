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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import javax.validation.constraints.NotNull;

import com.minhkhoa.myshop01.dto.OrdersDto;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "orders")
public class OrdersEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "dd-MM-yyyy hh:mm:ss")
	@NotNull(message = "Không được để trống ngày order!")
	private Date orders_date;
	@Column(nullable = false)
	@NotNull(message = "Không được để trống status!")
	private Integer status;

	public OrdersEntity() {
		super();
	}

	public OrdersEntity(Long id, Date orders_date, Integer status) {
		super();
		this.id = id;
		this.orders_date = orders_date;
		this.status = status;
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

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	//////////////////////////////////////////////////////////////
	public Collection<OrderDetailEntity> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(Collection<OrderDetailEntity> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public CustomerEntity getCustomers() {
		return customers;
	}

	public void setCustomers(CustomerEntity customers) {
		this.customers = customers;
	}

	/////////////////////////////////////////////////////////////////////
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

	// Convert to DTO
	public OrdersDto toDTO() {
		OrdersDto ordersDto = new OrdersDto();
		ordersDto.setId(this.getId());
		ordersDto.setOrders_date(this.getOrders_date());
		ordersDto.setStatus(this.getStatus());
		ordersDto.setCustomerid(this.getCustomers().getId());

		return ordersDto;
	}

	// TOTAL PRICE
	public Long getTotalCartPrice() {
		return orderDetails.stream().mapToLong(od -> od.getProduct_price() * od.getQuantity()).sum();
	}

	// SHIPPING FEE

	public Long getShippingFee() {
		return 25000L;
	}

	// TOTALPRICE OF ORDER
	public Long getTotalOrderPrice() {
		return getTotalCartPrice() + getShippingFee();
	}

	// status

	private String getStatusString() {

		switch (status) {
		case 0:
			return "NULL - Giỏ hàng";
		case 1:
			return "COD - Đặt hàng thành công";
		case 2:
			return "COD - Đã xác nhận";
		case 3:
			return "COD - Đang giao hàng";
		case 4:
			return "COD - Đã nhận hàng";
		case 5:
			return "COD - Đã hủy";
		case 10:
			return "MOMO - Đang chờ thanh toán";
		case 11:
			return "MOMO - Đặt hàng thành công";
		case 12:
			return "MOMO - Đã xác nhận";
		case 13:
			return "MOMO - Đang giao hàng";
		case 14:
			return "MOMO - Đã nhận hàng";
		case 15:
			return "MOMO - Đã hủy";
		default:
			return "Null";
		}
	}

	public String getPaymentType() {
		return getStatusString().split(" - ")[0];
	}

	public String getPaymentStatus() {
		return getStatusString().split(" - ")[1];
	}
}
