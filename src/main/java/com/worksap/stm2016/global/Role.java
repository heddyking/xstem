package com.worksap.stm2016.global;

public enum Role {
	ADMIN("0"),
	HRM("1"),
	HR("2"),
	MG("3"),
	OTHER("4"),
	CANDIDATE("10"),
	STE("11"),
	DISMISSED("12");
	
	private String value; 
	
	private Role (String value) { this.value = value; }
	
	public String v(){
		return this.value;
	}
	
	public Integer i(){
		return Integer.valueOf(this.value);
	}
}