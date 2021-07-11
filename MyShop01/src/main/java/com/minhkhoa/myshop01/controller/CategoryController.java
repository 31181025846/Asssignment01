package com.minhkhoa.myshop01.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.minhkhoa.myshop01.dto.CategoryDto;
import com.minhkhoa.myshop01.services.CategoryServices;

@RestController
@RequestMapping("/api/category")
public class CategoryController {

	private CategoryServices categoryServices;

	@Autowired
	public CategoryController(CategoryServices categoryServices) {
		this.categoryServices = categoryServices;
	}

	// FIND ALL CATEGORIES
	@GetMapping("/")
	public ResponseEntity<List<CategoryDto>> findAllCates() {
		List<CategoryDto> cates = categoryServices.findAll();
		if (cates.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(cates, HttpStatus.OK);
	}

	// FIND CATEGORY BY ID
	@GetMapping("/{id}")
	public ResponseEntity<CategoryDto> getCateById(@PathVariable Long id) {
		CategoryDto cates = categoryServices.findById(id);
		return new ResponseEntity<>(cates, HttpStatus.OK);
	}

	// ADD CATEGORY
	@PostMapping("/")
	public ResponseEntity<CategoryDto> insertCate(@RequestBody CategoryDto cates) {
		categoryServices.save(cates);
		return new ResponseEntity<>(cates, HttpStatus.CREATED);
	
	}

	// UPDATE CATEGORY

	@PutMapping("/{id}")
	public ResponseEntity<CategoryDto> updateCate(@PathVariable Long id, @RequestBody CategoryDto cates) {
		categoryServices.update(id, cates);
		return new ResponseEntity<>(cates, HttpStatus.OK);
	}

	// DELETE PRODUCT

	@DeleteMapping("/{id}")
	public ResponseEntity<CategoryDto> deteleCate(@PathVariable Long id) {

		categoryServices.findById(id);
		categoryServices.delete(id);
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

}
