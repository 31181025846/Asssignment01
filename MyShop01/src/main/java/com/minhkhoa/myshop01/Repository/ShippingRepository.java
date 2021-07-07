package com.minhkhoa.myshop01.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.minhkhoa.myshop01.Entity.ShippingEntity;

@Repository
public interface ShippingRepository extends JpaRepository<ShippingEntity, Long> {

}
