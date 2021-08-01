package com.minhkhoa.myshop01.services;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.dto.UserRoleDto;
import com.minhkhoa.myshop01.entity.Role;
import com.minhkhoa.myshop01.repository.UserRoleRepository;

@Service
public class RoleServices implements BaseServices<UserRoleDto, Long> {

	private UserRoleRepository roleRepository;

	public RoleServices(UserRoleRepository roleRepository) {
		super();
		this.roleRepository = roleRepository;
	}

	// *********** FUNCTION CONVERT TO ENTITY **************//
	public Role toEntity(Long id) {
		Optional<Role> roles = roleRepository.findById(id);
		roles.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
		return roles.get();
	}

	// FIND ALL

	@Override
	public List<UserRoleDto> findAll() {

		return roleRepository.findAll().stream().map(Role::toDTO).collect(Collectors.toList());
	}

	// FIND BY ID
	@Override
	public UserRoleDto findById(Long id) {
		Optional<Role> entity = roleRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy Id của role!"));
		return entity.get().toDTO();
	}

	// SAVE

	@Override
	public void save(UserRoleDto t) {
		Role role = new Role();
		role.setName(t.getName());
		roleRepository.save(role);

	}

	// UPDATE
	@Override
	public void update(Long id, UserRoleDto t) {
		Optional<Role> entity = roleRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy Id của role!"));
		if (id.equals(t.getId())) {
			entity.get().setName(t.getName());
			roleRepository.save(toEntity(t.getId()));
		} else
			throw new RuntimeException("ID không trùng khớp!");

	}
	// DELETE

	@Override
	public void delete(Long id) {
		roleRepository.delete(toEntity(id));

	}

}
