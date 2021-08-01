package com.minhkhoa.myshop01.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.minhkhoa.myshop01.entity.User;

@Repository
public interface UsersRepository extends JpaRepository<User, Long> {

	Optional<User> findByUsername(String username);

	   Boolean existsByUsername(String username);
	    
	    Boolean existsByEmail(String email);
}
