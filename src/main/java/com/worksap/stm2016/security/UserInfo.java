package com.worksap.stm2016.security;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

public class UserInfo implements Principal{
	private String email;
	private Integer role;
	private Integer userid;
	private Integer departmentid;
	private Integer positionid;
	
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return this.email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(Integer departmentid) {
		this.departmentid = departmentid;
	}

	public Integer getPositionid() {
		return positionid;
	}

	public void setPositionid(Integer positionid) {
		this.positionid = positionid;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}
	
	public Map<String,Object> toMap(){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("email",email);
		map.put("role",role);
		map.put("userid",userid);
		map.put("departmentid",departmentid);
		map.put("positionid",positionid);
		return map;
	}
}