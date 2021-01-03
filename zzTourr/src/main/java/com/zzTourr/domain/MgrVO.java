package com.zzTourr.domain;

public class MgrVO {
	
	private String lodTel;
	private String ownerId;
	private String ownerName;
	private String owPass;
	
	
	public String getLodTel() {
		return lodTel;
	}
	public void setLodTel(String lodTel) {
		this.lodTel = lodTel;
	}
	public String getOwnerId() {
		return ownerId;
		}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}


	public String getOwPass() {
		return owPass;
	}


	public void setOwPass(String owPass) {
		this.owPass = owPass;
	}


	@Override
	public String toString() {
		return "MgrVO [mgrTel=" + lodTel + ", mgrId=" + ownerId + ", mgrName=" + ownerName + ", mgrPass=" + owPass + "]";
	}
	
	
	
}
