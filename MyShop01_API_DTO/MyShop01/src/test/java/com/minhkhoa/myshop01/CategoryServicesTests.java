package com.minhkhoa.myshop01;

import static org.junit.Assert.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;

import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import javax.validation.constraints.NotNull;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.minhkhoa.myshop01.dto.CategoryDto;
import com.minhkhoa.myshop01.entity.CategoryEntity;
import com.minhkhoa.myshop01.repository.CategoryRepository;
import com.minhkhoa.myshop01.services.CategoryServices;

@SpringBootTest
@RunWith(SpringRunner.class)
public class CategoryServicesTests {
	public static final Long ID = 6L;
	public static final String CATE_NAME = "CategoryTest";
	public static final String DTONAME = "CategoryTest";
	@InjectMocks
	private CategoryServices categoryServices;

	@Mock
	private CategoryRepository categoryRepository;

	@NotNull
	private CategoryEntity newCate() {
		CategoryEntity category = new CategoryEntity();
		category.setId(ID);
		category.setName(CATE_NAME);
		return category;
	}

	@NotNull
	private CategoryDto newDTO() {
		CategoryDto newDto = new CategoryDto();
		newDto.setId(ID);
		newDto.setName(DTONAME);
		return newDto;
	}

	// TEST FIND ALL CATEGORIES
	@Test
	public void findAll() {
		assertNotNull(categoryServices);
		List<CategoryEntity> cateList = new ArrayList<>();
		CategoryEntity cate = new CategoryEntity();
		CategoryEntity cate2 = new CategoryEntity();
		cateList.add(cate);
		cateList.add(cate2);

		when(categoryRepository.findAll()).thenReturn(cateList);
		Collection<CategoryDto> result = categoryServices.findAll();
		assertEquals(2, result.size());

	}

	// TEST FIND CATEGORY BY ID
	@Test
	public void findById() {
		CategoryEntity cate = newCate();

		Optional<CategoryEntity> optional = Optional.of(cate);
		assertNotNull(optional);
		when(categoryRepository.findById(ID)).thenReturn(optional);

		CategoryDto dto2 = categoryServices.findById(ID);
		assertEquals(dto2.getName(), DTONAME);
	}

	@Test
	public void save() {
		CategoryEntity cate = newCate();

		when(categoryRepository.save(cate)).thenReturn(cate);
		categoryServices.save(cate.toDTO());
		assertEquals(cate.toDTO().getName(), DTONAME);

	}

	@Test
	public void update() {
		CategoryEntity cate = newCate();
		// CategoryDto dto = newDTO();
		Optional<CategoryEntity> optional = Optional.of(cate);
		assertNotNull(optional);
		when(categoryRepository.findById(ID)).thenReturn(optional);

		when(categoryRepository.save(optional.get())).thenReturn(cate);

		categoryServices.save(cate.toDTO());

		assertEquals(cate.toDTO().getName(), DTONAME);

	}

	@Test
	public void delete() {
		CategoryEntity cate = newCate();

		Optional<CategoryEntity> optional = Optional.of(cate);
		assertNotNull(optional);

		when(categoryRepository.findById(ID)).thenReturn(optional);

		categoryServices.delete(ID);
		assertEquals(cate.toDTO().getName(), DTONAME);
	}
}
