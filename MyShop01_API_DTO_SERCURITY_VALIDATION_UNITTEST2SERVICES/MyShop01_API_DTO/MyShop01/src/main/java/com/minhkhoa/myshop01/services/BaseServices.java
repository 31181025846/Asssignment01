package com.minhkhoa.myshop01.services;

import java.util.List;

public interface BaseServices<T, ID> {

	List<T> findAll();

	T findById(ID id);

	void save(T t);

	void update(ID id, T t);

	void delete(ID id);
}
