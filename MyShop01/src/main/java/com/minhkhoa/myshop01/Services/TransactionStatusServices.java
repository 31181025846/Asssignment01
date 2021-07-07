package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.TransactionStatusEntity;
import com.minhkhoa.myshop01.Repository.TransactionStatusRepository;

@Service
public class TransactionStatusServices implements BaseServices<TransactionStatusEntity, Long> {

	private TransactionStatusRepository transactionStatusRepository;

	@Autowired
	public TransactionStatusServices(TransactionStatusRepository transactionStatusRepository) {
		this.transactionStatusRepository = transactionStatusRepository;
	}

	@Override
	public List<TransactionStatusEntity> findAll() {

		return (List<TransactionStatusEntity>) transactionStatusRepository.findAll();
	}

	@Override
	public Optional<TransactionStatusEntity> findById(Long id) {

		return transactionStatusRepository.findById(id);
	}

	@Override
	public void save(TransactionStatusEntity trans) {
		transactionStatusRepository.save(trans);

	}

	@Override
	public void delete(TransactionStatusEntity trans) {
		transactionStatusRepository.delete(trans);

	}

}
