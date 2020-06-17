package com.kos.demo.model;

public class Statement {
	
	
	private int TID;
	private String Desc;
	private float Amount;
	private String Date;
	public int getTID() {
		return TID;
	}
	public void setTID(int tID) {
		TID = tID;
	}
	public String getDesc() {
		return Desc;
	}
	public void setDesc(String desc) {
		Desc = desc;
	}
	public float getAmount() {
		return Amount;
	}
	public void setAmount(float amount) {
		Amount = amount;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	@Override
	public String toString() {
		return "Statement [TID=" + TID + ", Desc=" + Desc + ", Amount=" + Amount + ", Date=" + Date + "]";
	}

}
