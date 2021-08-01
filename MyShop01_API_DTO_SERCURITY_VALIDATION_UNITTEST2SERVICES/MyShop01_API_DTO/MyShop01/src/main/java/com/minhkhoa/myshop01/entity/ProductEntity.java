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
import javax.validation.constraints.Min;

import javax.validation.constraints.NotNull;

import com.minhkhoa.myshop01.dto.ProductDto;

@Entity
@Table(name = "product")
public class ProductEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "name", length = 100, nullable = false)
	@NotNull(message = "Không được để trống tên sản phẩm!")
	private String name;
	@Column(name = "image", length = 500, nullable = false)
	@NotNull(message = "Không được để trống tên sản phẩm!")
	private String image;
	@Column(name = "price", nullable = false)
	@NotNull(message = "Không được để trống giá sản phẩm")
	@Min(1000)
	private Integer price;
	@Column(name = "quantity", nullable = false)
	@NotNull(message = "Không được để trống số lượng sản phẩm")
	@Min(0)
	private Integer quantity;
	@Column(name = "describe", length = 1000, nullable = false)
	@NotNull(message = "Không được để trống miêu tả sản phẩm!")
	private String describe;

	public ProductEntity() {
		super();
	}

	public ProductEntity(Long id, String name, String image, Integer price, Integer quantity, String describe) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.quantity = quantity;
		this.describe = describe;
	}
	
	
	

//////////////////////////////////////////////

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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public CategoryEntity getCategories() {
		return categories;
	}

	public void setCategories(CategoryEntity categories) {
		this.categories = categories;
	}

	//////////////////////////////////////////
	@Override
	public String toString() {
		return this.getId() + "," + this.getName() + ","+ this.getImage() + "," + this.getPrice() + "," + this.getQuantity() + ","
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
		productDto.setImage(this.getImage());
		productDto.setPrice(this.getPrice());
		productDto.setQuantity(this.getQuantity());
		productDto.setDescribe(this.getDescribe());
		productDto.setCateid(this.getCategories().getId());
		return productDto;
	}
}
