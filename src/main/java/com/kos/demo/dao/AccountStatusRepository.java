package com.kos.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kos.demo.model.AccountStatus;

@Repository
public interface AccountStatusRepository extends JpaRepository<AccountStatus, Integer>{

}
