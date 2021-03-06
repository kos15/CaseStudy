package com.kos.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kos.demo.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer>{

}
