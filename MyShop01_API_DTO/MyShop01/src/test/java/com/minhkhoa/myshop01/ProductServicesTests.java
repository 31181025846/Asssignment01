package com.minhkhoa.myshop01;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
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

import com.minhkhoa.myshop01.dto.ProductDto;
import com.minhkhoa.myshop01.entity.CategoryEntity;
import com.minhkhoa.myshop01.entity.ProductEntity;
import com.minhkhoa.myshop01.repository.CategoryRepository;
import com.minhkhoa.myshop01.repository.ProductRepository;
import com.minhkhoa.myshop01.services.ProductServices;

@SpringBootTest
@RunWith(SpringRunner.class)
public class ProductServicesTests {

	public static final long ID = 1;
	public static final String PROD_NAME = "ProductNameTest";
	public static final Integer PROD_PRICE = 10000;
	public static final Integer PROD_QUANTITY = 10;
	public static final String PROD_DESCRIBE = "Describe for test product";
	public static final long CATEID = 1;
	public static final String DTONAME = "DTONAME";

	@Mock
	private ProductRepository productRepository;

	@InjectMocks
	private ProductServices productServices;

	@Mock
	private CategoryRepository categoryRepository;

	@NotNull
	private ProductEntity newProduct() {
		ProductEntity product = new ProductEntity();
		product.setId(ID);
		product.setName(PROD_NAME);
		product.setPrice(PROD_PRICE);
		product.setQuantity(PROD_QUANTITY);
		product.setDescribe(PROD_DESCRIBE);
		CategoryEntity cate = new CategoryEntity();
		cate.setId(CATEID);
		cate.setName("Cate");
		product.setCategories(cate);

		return product;
	}

	@NotNull
	private ProductDto newDTO() {
		ProductDto dto = new ProductDto();
		dto.setId(ID);
		dto.setName(DTONAME);
		dto.setPrice(PROD_PRICE);
		dto.setQuantity(PROD_QUANTITY);
		dto.setDescribe(PROD_DESCRIBE);
		dto.setCateid(CATEID);

		return dto;
	}

	// TEST FIND ALL PRODUCTS ok
	@Test
	public void findAll() {
		assertNotNull(productServices);
		List<ProductEntity> prodList = new ArrayList<>();
		ProductEntity prod01 = new ProductEntity();
		ProductEntity prod02 = new ProductEntity();

		prod01.setCategories(newProduct().getCategories());
		prod02.setCategories(newProduct().getCategories());
		prodList.add(prod01);
		prodList.add(prod02);

		when(productRepository.findAll()).thenReturn(prodList);
		Collection<ProductDto> result = productServices.findAll();
		assertEquals(2, result.size());

	}

	// TEST FIND BY ID
	@Test
	public void findByID() {
		ProductEntity prod = newProduct();
		ProductDto dto = newDTO();
		Optional<ProductEntity> optional = Optional.of(prod);
		assertNotNull(optional);

		when(productRepository.findById(ID)).thenReturn(optional);
		ProductDto dto2 = productServices.findById(dto.getId());
		assertEquals(dto2.getName(), PROD_NAME);

	}

	// SAVE PRODUCT
	@Test
	public void saveProd() {
		ProductEntity prod = newProduct();
		ProductDto dto = newDTO();
		CategoryEntity ca = new CategoryEntity();
		Optional<CategoryEntity> op = Optional.of(ca);

		when(productRepository.save(prod)).thenReturn(prod);
		when(categoryRepository.findById(dto.getCateid())).thenReturn(op);
		productServices.save(dto);
		assertEquals(dto.getName(), DTONAME);

	}

	// UPDATE
	@Test
	public void updateProd() {
		ProductEntity prod = newProduct();
		Optional<ProductEntity> optional = Optional.of(prod);
		assertNotNull(optional);
		ProductDto dto = newDTO();
		CategoryEntity ca = new CategoryEntity();
		Optional<CategoryEntity> op = Optional.of(ca);
	
		
		when(productRepository.findById(ID)).thenReturn(optional);
		when(categoryRepository.findById(dto.getCateid())).thenReturn(op);
		productServices.update(ID, dto);
		assertEquals(dto.getName(), DTONAME);

	}

	// DELETE
	@Test
	public void deleteProd() {
		ProductEntity prod = newProduct();
		ProductDto dto = newDTO();
		Optional<ProductEntity> optional = Optional.of(prod);
		assertNotNull(optional);

		when(productRepository.findById(ID)).thenReturn(optional);
		productServices.delete(ID);
		assertEquals(dto.getName(), DTONAME);
	}

}
