package com.minhkhoa.myshop01.entity;

import java.util.Collection;

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

import com.minhkhoa.myshop01.dto.ProductDto;

@Entity
@Table(name = "product")
public class ProductEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "name", length = 50, nullable = false)
	private String name;
	@Column(name = "price", nullable = false)
	private Integer price;
	@Column(name = "quantity", nullable = false)
	private Integer quantity;
	@Column(name = "describe", length = 200, nullable = false)
	private String describe;

	public ProductEntity() {
		super();
	}

	public ProductEntity(Long id, String name, Integer price, Integer quantity, String describe) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.describe = describe;
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

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}
//////////////////////////////////////////////

	public CategoryEntity getCategories() {
		return categories;
	}

	public void setCategories(CategoryEntity categories) {
		this.categories = categories;
	}

	//////////////////////////////////////////
	@Override
	public String toString() {
		return this.getId() + "," + this.getName() + "," + this.getPrice() + "," + this.getQuantity() + ","
				+ this.getDescribe();
	}

	// Relation to Category
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private CategoryEntity categories;

	// Relation to product review
	@OneToMany(mappedBy = "products", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
	private Collection<ProductReviewEntity> productReviews;

	// Relation to order detail
	@OneToMany(mappedBy = "products", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Collection<OrderDetailEntity> orderDetails;

	/// Function Convert to DTO:
	public ProductDto toDTO() {
		ProductDto productDto = new ProductDto();
		productDto.setId(this.getId());
		productDto.setName(this.getName());
		productDto.setPrice(this.getPrice());
		productDto.setQuantity(this.getQuantity());
		productDto.setDescribe(this.getDescribe());
		productDto.setCateid(this.getCategories().getId());
		return productDto;
	}
}
