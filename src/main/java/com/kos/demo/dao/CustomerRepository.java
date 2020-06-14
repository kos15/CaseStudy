package com.kos.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kos.demo.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer>{

}
