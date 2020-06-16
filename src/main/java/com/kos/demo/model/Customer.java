package com.kos.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

// Customer Class for storing the object coming from the database

@Entity
@Table(name="Customer")
public class Customer {

	@Id
	@Column(name="CustomerSSNId")
	private int CustomerSSNId;
	@Column(name="CustomerName")
	private String CustomerName;
	@Column(name="Age")
	private int Age;
	@Column(name="Address1")
	private String Address1;
	@Column(name="Address2")
	private String Address2;
	@Column(name="City")
	private String City;
	@Column(name="State")
	private String State;
	@Column(name="CustomerID")
	private int CustomerId;
	public int getCustomerId() {
		return CustomerId;
	}
	public void setCustomerId(int customerId) {
		CustomerId = customerId;
	}
	public int getCustomerSSNId() {
		return CustomerSSNId;
	}
	public void setCustomerSSNId(int customerSSNId) {
		CustomerSSNId = customerSSNId;
	}
	public String getCustomerName() {
		return CustomerName;
	}
	public void setCustomerName(String customerName) {
		CustomerName = customerName;
	}
	public int getAge() {
		return Age;
	}
	
	public void setAge(int age) {
		Age = age;
	}
	public String getAddress1() {
		return Address1;
	}
	public void setAddress1(String address1) {
		Address1 = address1;
	}
	public String getAddress2() {
		return Address2;
	}
	public void setAddress2(String address2) {
		Address2 = address2;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	@Override
	public String toString() {
		return "Customer [CustomerSSNId=" + CustomerSSNId + ", CustomerName=" + CustomerName + ", Age=" + Age
				+ ", Address1=" + Address1 + ", Address2=" + Address2 + ", City=" + City + ", State=" + State
				 + "]";
	}
	
	
	
}
//Customer SSN ID, Customer Name, Age, Address Line1, Address Line2, City, State