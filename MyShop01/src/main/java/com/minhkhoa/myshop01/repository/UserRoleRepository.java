package com.minhkhoa.myshop01.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.minhkhoa.myshop01.entity.Role;
import com.minhkhoa.myshop01.entity.RoleName;

@Repository
public interface UserRoleRepository extends JpaRepository<Role, Long> {

	   Optional<Role> findByName(RoleName roleName);
}
