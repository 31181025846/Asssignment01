package com.minhkhoa.myshop01.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.minhkhoa.myshop01.entity.TransactionStatusEntity;

@Repository
public interface TransactionStatusRepository extends JpaRepository<TransactionStatusEntity, Long> {

}
