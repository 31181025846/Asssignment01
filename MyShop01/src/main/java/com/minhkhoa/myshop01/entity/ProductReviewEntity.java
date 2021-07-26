package com.minhkhoa.myshop01.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;


import com.minhkhoa.myshop01.dto.ProductReviewDto;

@Entity
@Table(name = "product_review")
public class ProductReviewEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "content", length = 100, nullable = false)
	private String content;
	@Column(name = "rating", length = 10, nullable = false)
	@Min(1)
	@Max(5)
	private Integer rating;

	// Constructor
	public ProductReviewEntity() {
		super();
	}

	public ProductReviewEntity(Long id, String content, Integer rating) {
		super();
		this.id = id;
		this.content = content;
		this.rating = rating;

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	///////////////////////////////////////////////////////////

	public ProductEntity getProducts() {
		return products;
	}

	public void setProducts(ProductEntity products) {
		this.products = products;
	}

	///////////////////////////////////////////////////////////////////

	@Override
	public String toString() {
		return this.getId() + "," + this.getContent() + "," + this.getRating();
	}

	// Relation to product

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "product_id", nullable = false)
	private ProductEntity products;

	// Convert to DTO
	public ProductReviewDto toDTO() {
		ProductReviewDto prodReview = new ProductReviewDto();
		prodReview.setId(this.getId());
		prodReview.setContent(this.getContent());
		prodReview.setRating(this.getRating());
		prodReview.setProdid(this.getProducts().getId());
		return prodReview;
	}
}
