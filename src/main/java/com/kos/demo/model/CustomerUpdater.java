package com.kos.demo.model;

import org.springframework.stereotype.Component;

@Component
public class CustomerUpdater {

	private int ssnid;
	private int cid;
	private String ocname;
	private String ncname;
	private String oaddr;
	private String naddr;
	private int oage;
	private int nage;

	public int getSsnid() {
		return ssnid;
	}

	public void setSsnid(int ssnid) {
		this.ssnid = ssnid;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getOcname() {
		return ocname;
	}

	public void setOcname(String ocname) {
		this.ocname = ocname;
	}

	public String getNcname() {
		return ncname;
	}

	public void setNcname(String ncname) {
		this.ncname = ncname;
	}

	public String getOaddr() {
		return oaddr;
	}

	public void setOaddr(String oaddr) {
		this.oaddr = oaddr;
	}

	public String getNaddr() {
		return naddr;
	}

	public void setNaddr(String naddr) {
		this.naddr = naddr;
	}

	public int getOage() {
		return oage;
	}

	public void setOage(int oage) {
		this.oage = oage;
	}

	public int getNage() {
		return nage;
	}

	public void setNage(int nage) {
		this.nage = nage;
	}

	@Override
	public String toString() {
		return "CustomerUpdater [ssnid=" + ssnid + ", cid=" + cid + ", ocname=" + ocname + ", ncname=" + ncname
				+ ", oaddr=" + oaddr + ", naddr=" + naddr + ", oage=" + oage + ", nage=" + nage + "]";
	}

}
