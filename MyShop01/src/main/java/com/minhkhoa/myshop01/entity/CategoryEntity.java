package com.minhkhoa.myshop01.entity;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.minhkhoa.myshop01.dto.CategoryDto;

@Entity
@Table(name = "category")
public class CategoryEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "name", length = 50, nullable = false)
	private String name;

//Constructor
	public CategoryEntity() {
		super();
	}

	public CategoryEntity(Long id, String name) {
		super();
		this.id = id;
		this.name = name;
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

	
	@Override
	public String toString()
	{
		return this.getId()+","+this.getName();
	}
	
	//Relation to product
	@OneToMany(mappedBy = "categories",fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
	private Collection<ProductEntity> products;
	
	
	public CategoryDto toDTO()
	{
		CategoryDto categoryDto = new CategoryDto();
		categoryDto.setId(this.getId());
		categoryDto.setName(this.getName());
		return categoryDto;
		
	}
	
}
