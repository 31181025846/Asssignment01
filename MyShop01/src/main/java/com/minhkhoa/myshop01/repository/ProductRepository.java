package com.minhkhoa.myshop01.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.minhkhoa.myshop01.entity.CategoryEntity;
import com.minhkhoa.myshop01.entity.ProductEntity;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Long> {
	@Query(value="SELECT * FROM product p where p.category_id=?1",nativeQuery = true)
	List<ProductEntity> findByCategories(Long categoryId);
}
