package com.kos.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Accounts")
public class Accounts {
	@Id
	@Column(name = "AccountId")
	private int AccountId;
	@Column(name = "CustomerSSNId")
	private int CustomerSSNId;
	@Column(name = "AccountType")
	private String AccountType;
	@Column(name = "DepositeAmount")
	private float DepositeAmount;
	@Column(name = "AccountCreated")
	private String AccountCreated;
	@Column(name = "Balance")
	private float Balance;

	public int getAccountId() {
		return AccountId;
	}

	public void setAccountId(int accountId) {
		AccountId = accountId;
	}

	public int getCustomerSSNId() {
		return CustomerSSNId;
	}

	public void setCustomerSSNId(int customerSSNId) {
		CustomerSSNId = customerSSNId;
	}

	public String getAccountType() {
		return AccountType;
	}

	public void setAccountType(String accountType) {
		AccountType = accountType;
	}

	public float getDepositeAmount() {
		return DepositeAmount;
	}

	public void setDepositeAmount(float depositeAmount) {
		DepositeAmount = depositeAmount;
	}

	public String getAccountCreated() {
		return AccountCreated;
	}

	public void setAccountCreated(String accountCreated) {
		AccountCreated = accountCreated;
	}

	public float getBalance() {
		return Balance;
	}

	public void setBalance(float balance) {
		Balance = balance;
	}

	@Override
	public String toString() {
		return "Accounts [AccountId=" + AccountId + ", CustomerSSNId=" + CustomerSSNId + ", AccountType=" + AccountType
				+ ", DepositeAmount=" + DepositeAmount + ", AccountCreated=" + AccountCreated + ", Balance=" + Balance
				+ "]";
	}

	public boolean check(Accounts obj1, Accounts obj2) {
		if ((obj1.getAccountId() == obj2.getAccountId()) && (obj1.getAccountType().equals(obj2.getAccountType())))
			return true;
		else
			return false;
	}
	
	public boolean checkType(Accounts acc) {
		if(this.AccountType.equals(acc.getAccountType()))
			return true;
		else
			return false;
	}

}
