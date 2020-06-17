package com.kos.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Transactions")
public class Transactions {
	@Id
	@Column(name="TID")
	private int TID;
	@Column(name="SenderAccId")
	private int SenderAccId;
	@Column(name="ReciverAccId")
	private int ReciverAccId;
	@Column(name="Amount")
	private float Amount;
	@Column(name="Time")
	private String Time;
	public int getTID() {
		return TID;
	}
	public void setTID(int tID) {
		TID = tID;
	}
	public int getSenderAccId() {
		return SenderAccId;
	}
	public void setSenderAccId(int senderAccId) {
		SenderAccId = senderAccId;
	}
	public int getReciverAccId() {
		return ReciverAccId;
	}
	public void setReciverAccId(int reciverAccId) {
		ReciverAccId = reciverAccId;
	}
	public float getAmount() {
		return Amount;
	}
	public void setAmount(float amount) {
		Amount = amount;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	@Override
	public String toString() {
		return "Transactions [TID=" + TID + ", SenderAccId=" + SenderAccId + ", ReciverAccId=" + ReciverAccId
				+ ", Amount=" + Amount + ", Time=" + Time + "]";
	}
	
}
