package com.minhkhoa.myshop01.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.minhkhoa.myshop01.Entity.ProductReviewEntity;

@Repository
public interface ProductReviewRepository extends JpaRepository<ProductReviewEntity, Long> {

}
