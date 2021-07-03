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
@Table(name = "product_review")
public class ProductReviewEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "content", length = 100, nullable = false)
	private String content;
	@Column(name = "rating", length = 10, nullable = false)
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

	@Override
	public String toString() {
		return this.getId() + "," + this.getContent() + "," + this.getRating();
	}

	// Relation to product
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "product_id", nullable = false)
	private ProductEntity products;
}
