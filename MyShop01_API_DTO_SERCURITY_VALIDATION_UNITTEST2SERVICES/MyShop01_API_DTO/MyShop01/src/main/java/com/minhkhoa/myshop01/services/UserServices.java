package com.minhkhoa.myshop01.services;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.dto.UsersDto;

import com.minhkhoa.myshop01.entity.User;
import com.minhkhoa.myshop01.repository.UsersRepository;

@Service
public class UserServices implements BaseServices<UsersDto, Long> {

	private UsersRepository usersRepository;

	public UserServices(UsersRepository usersRepository) {
		super();
		this.usersRepository = usersRepository;
	}

	// *********** FUNCTION CONVERT TO ENTITY **************//

	public User toEntity(Long id) {

		Optional<User> ship = usersRepository.findById(id);
		ship.orElseThrow(() -> new RuntimeException("Không tìm thấy tên user!"));
		return ship.get();
	}

	@Override
	public List<UsersDto> findAll() {

		return usersRepository.findAll().stream().map(User::toDTO).collect(Collectors.toList());
	}

	@Override
	public UsersDto findById(Long id) {
		Optional<User> entity = usersRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy tên user!"));
		return entity.get().toDTO();
	}

	@Override
	public void save(UsersDto t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Long id, UsersDto t) {
		Optional<User> entity = usersRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy tên user!"));
		if (id.equals(t.getId())) {
			entity.get().setName(t.getName());
			entity.get().setUsername(t.getUsername());
			entity.get().setEmail(t.getEmail());
			entity.get().setPassword(t.getPassword());
			usersRepository.save(toEntity(t.getId()));
		} else
			throw new RuntimeException("ID không trùng khớp!");

	}

	@Override
	public void delete(Long id) {
		usersRepository.delete(toEntity(id));

	}

}
