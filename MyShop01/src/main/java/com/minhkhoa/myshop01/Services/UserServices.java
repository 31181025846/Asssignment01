package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.UsersEntity;
import com.minhkhoa.myshop01.Repository.UsersRepository;

@Service
public class UserServices implements BaseServices<UsersEntity, Long> {

	private UsersRepository usersRepository;

	@Autowired
	public UserServices(UsersRepository usersRepository) {
		this.usersRepository = usersRepository;
	}

	@Override
	public List<UsersEntity> findAll() {

		return (List<UsersEntity>) usersRepository.findAll();
	}

	@Override
	public Optional<UsersEntity> findById(Long id) {

		return usersRepository.findById(id);
	}

	@Override
	public void save(UsersEntity users) {
		usersRepository.save(users);

	}

	@Override
	public void delete(UsersEntity users) {
		usersRepository.delete(users);

	}

}
