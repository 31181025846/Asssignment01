package com.minhkhoa.myshop01.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.minhkhoa.myshop01.entity.OrdersEntity;

@Repository
public interface OrdersRepository extends JpaRepository<OrdersEntity, Long> {
//
//	@Query(" FROM orders GROUP BY customer_id ")
	//OrdersEntity getCustomerShoppingCart(Long customer_id);
//
//	@Query("FROM orders WHERE custome_id=?1 AND status_id<>0 ORDER BY ID DESC")
//	List<OrdersEntity> findAllByUser_IdOrderByIdDesc(Long customer_id);
//
//	@Query("FROM orders WHERE status <> 0 ORDER BY ID DESC")
//	List<OrdersEntity> findAllExceptCart();

}
