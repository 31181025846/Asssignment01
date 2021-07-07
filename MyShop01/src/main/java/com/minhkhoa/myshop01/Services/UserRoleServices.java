package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.UserRoleEntity;
import com.minhkhoa.myshop01.Repository.UserRoleRepository;

@Service
public class UserRoleServices implements BaseServices<UserRoleEntity, Long> {

	private UserRoleRepository userRoleRepository;

	@Autowired
	public UserRoleServices(UserRoleRepository userRoleRepository) {
		this.userRoleRepository = userRoleRepository;
	}

	@Override
	public List<UserRoleEntity> findAll() {

		return (List<UserRoleEntity>) userRoleRepository.findAll();
	}

	@Override
	public Optional<UserRoleEntity> findById(Long id) {

		return userRoleRepository.findById(id);
	}

	@Override
	public void save(UserRoleEntity userRoles) {
		userRoleRepository.save(userRoles);

	}

	@Override
	public void delete(UserRoleEntity userRoles) {
		userRoleRepository.delete(userRoles);

	}
}
