package com.kos.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AccountStatus")
public class AccountStatus {
	@Id
	@Column(name="CustomerSSNId")
	private int CustomerSSNId;
	@Column(name="AccountId")
	private int AccountId;
	@Column(name="AccountType")
	private String AccountType;
	@Column(name="AccountStatus")
	private String AccountStatus;
	@Column(name="Message")
	private String Message;
	@Column(name="LastUpdated")
	private String LastUpdated;
	public int getCustomerSSNId() {
		return CustomerSSNId;
	}
	public void setCustomerSSNId(int customerSSNId) {
		CustomerSSNId = customerSSNId;
	}
	public int getAccountId() {
		return AccountId;
	}
	public void setAccountId(int accountId) {
		AccountId = accountId;
	}
	public String getAccountType() {
		return AccountType;
	}
	public void setAccountType(String accountType) {
		AccountType = accountType;
	}
	public String getAccountStatus() {
		return AccountStatus;
	}
	public void setAccountStatus(String accountStatus) {
		AccountStatus = accountStatus;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	public String getLastUpdated() {
		return LastUpdated;
	}
	public void setLastUpdated(String lastUpdated) {
		LastUpdated = lastUpdated;
	}
	@Override
	public String toString() {
		return "AccountStatus [CustomerSSNId=" + CustomerSSNId + ", AccountId=" + AccountId + ", AccountType="
				+ AccountType + ", AccountStatus=" + AccountStatus + ", Message=" + Message + ", LastUpdated="
				+ LastUpdated + "]";
	}
	

}
