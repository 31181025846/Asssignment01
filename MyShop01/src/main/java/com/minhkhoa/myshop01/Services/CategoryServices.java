package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.CategoryEntity;
import com.minhkhoa.myshop01.Repository.CategoryRepository;

@Service
public class CategoryServices implements BaseServices<CategoryEntity, Long> {

	private CategoryRepository categoryRepository;

	@Autowired
	public CategoryServices(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}

	@Override
	public List<CategoryEntity> findAll() {

		return (List<CategoryEntity>) categoryRepository.findAll();
	}

	@Override
	public Optional<CategoryEntity> findById(Long id) {

		return categoryRepository.findById(id);
	}

	@Override
	public void save(CategoryEntity category) {
		categoryRepository.save(category);

	}

	@Override
	public void delete(CategoryEntity category) {
		categoryRepository.delete(category);

	}

}
