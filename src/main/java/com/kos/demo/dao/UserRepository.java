package com.kos.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kos.demo.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findByUsername(String username);
}
