package com.minhkhoa.myshop01.Controller;

import java.util.List;
import java.util.Optional;

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

import com.minhkhoa.myshop01.Entity.CategoryEntity;
import com.minhkhoa.myshop01.Services.CategoryServices;

@RestController
@RequestMapping("/api/category")
public class CategoryController {
//pass test api
	private CategoryServices categoryServices;

	@Autowired
	public CategoryController(CategoryServices categoryServices) {
		this.categoryServices = categoryServices;
	}

	@GetMapping("/")
	public ResponseEntity<List<CategoryEntity>> findAllCates() {
		List<CategoryEntity> categories = categoryServices.findAll();
		if (categories.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(categories, HttpStatus.OK);
	}

	@GetMapping("/{id}")
	public ResponseEntity<CategoryEntity> getCatesById(@PathVariable Long id) {
		Optional<CategoryEntity> categories = categoryServices.findById(id);
		if (!categories.isPresent()) {
			return new ResponseEntity<>(categories.get(), HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(categories.get(), HttpStatus.OK);
	}

	@PostMapping("/")
	public ResponseEntity<CategoryEntity> insertCate(@RequestBody CategoryEntity category) {
		categoryServices.save(category);
		return new ResponseEntity<>(category, HttpStatus.OK);
	}

	@PutMapping("/{id}")
	public ResponseEntity<CategoryEntity> updateCate(@PathVariable Long id, @RequestBody CategoryEntity category) {
		Optional<CategoryEntity> currcategory = categoryServices.findById(id);
		if (!currcategory.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		currcategory.get().setName(category.getName());
		categoryServices.save(currcategory.get());
		return new ResponseEntity<>(currcategory.get(), HttpStatus.OK);
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<CategoryEntity> deteleCate(@PathVariable Long id) {
		Optional<CategoryEntity> category = categoryServices.findById(id);
		if (!category.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		categoryServices.delete(category.get());
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
}
