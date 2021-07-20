package com.minhkhoa.myshop01.services;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.dto.CategoryDto;

import com.minhkhoa.myshop01.entity.CategoryEntity;

import com.minhkhoa.myshop01.repository.CategoryRepository;

@Service
public class CategoryServices implements BaseServices<CategoryDto, Long> {
	
	
	private final CategoryRepository categoryRepository;

	public CategoryServices(CategoryRepository categoryRepository) {
		this.categoryRepository = categoryRepository;
	}

	// *********** FUNCTION CONVERT TO ENTITY **************//
	public CategoryEntity toEntity(Long id) {
		Optional<CategoryEntity> category = categoryRepository.findById(id);
		category.orElseThrow(() -> new RuntimeException("Không tìm thấy ID Category!"));
		return category.get();
	}

	// FIND ALL CATEGORIES

	@Override
	public List<CategoryDto> findAll() {

		return categoryRepository.findAll().stream().map(CategoryEntity::toDTO).collect(Collectors.toList());
	}

	// FIND CATEGORY BY ID

	@Override
	public CategoryDto findById(Long id) {
		Optional<CategoryEntity> entity = categoryRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy ID Category!"));
		return entity.get().toDTO();
	}

	// SAVE CATEGORY

	@Override
	public void save(CategoryDto t) {
		CategoryEntity category = new CategoryEntity();
		category.setName(t.getName());
		categoryRepository.save(category);

	}

	// UPDATE CATEGORY

	@Override
	public void update(Long id, CategoryDto t) {
		Optional<CategoryEntity> entity = categoryRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy ID Category!"));
		if (id.equals(t.getId())) {
			entity.get().setName(t.getName());
			categoryRepository.save(toEntity(t.getId()));
		} else
			throw new RuntimeException("ID không trùng khớp!");
	}



	@Override
	public void delete(Long id) {

		categoryRepository.delete(toEntity(id));

	}


}