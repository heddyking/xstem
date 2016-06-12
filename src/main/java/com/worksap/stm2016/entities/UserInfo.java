package com.worksap.stm2016.entities;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

public class UserInfo implements Principal{
	private String email;
	private Integer role;
	private Integer userid;
	private Integer departmentid;
	private Integer positionid;
	private String name;
	private String positionname;
	private String departmentname;
	
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
	
	public String getNm() {
		return name;
	}

	public void setNm(String name) {
		this.name = name;
	}
	
	public Map<String,Object> toMap(){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("name",name);
		map.put("email",email);
		map.put("role",role);
		map.put("userid",userid);
		map.put("departmentid",departmentid);
		map.put("positionid",positionid);
		map.put("positionname", positionname);
		map.put("departmentname",departmentname);
		return map;
	}
	
	@Override
	public String toString(){
		return toMap().toString();
	}

	public String getPositionname() {
		return positionname;
	}

	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}

	public String getDepartmentname() {
		return departmentname;
	}

	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
}