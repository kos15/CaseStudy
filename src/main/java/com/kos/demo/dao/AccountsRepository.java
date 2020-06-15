package com.kos.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kos.demo.model.Accounts;

@Repository
public interface AccountsRepository extends JpaRepository<Accounts, Integer>{

}
