package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

public interface BaseServices<T, ID> {

	List<T> findAll();

	Optional<T> findById(ID id);
	
	void save(T t);
	
	void delete(T t);
}
