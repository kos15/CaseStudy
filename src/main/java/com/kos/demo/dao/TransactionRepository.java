package com.kos.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kos.demo.model.Transactions;

public interface TransactionRepository extends JpaRepository<Transactions, Integer>{

}
