package com.peace.ostp.domain;
import java.util.List;

/**
 * Teacher实体类
 * @author 
 *
 */
public class Teacher {
	private int ID;
	private String name;
	private String email;
	private String phone;
	private List<Course> courses;
	
	public int getID() {
		return ID;
	}
 
	public void setID(int iD) {
		ID = iD;
	}
 
	public String getName() {
		return name;
	}
 
	public void setName(String name) {
		this.name = name;
	}
 
	public String getEmail() {
		return email;
	}
 
	public void setEmail(String email) {
		this.email = email;
	}
 
	public String getPhone() {
		return phone;
	}
 
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public List<Course> getCourses() {
		return courses;
	}
 
	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}
 
	@Override
	public String toString() {
		return "教师 ID：" + ID + "   email：" + email + "   phone：" + phone;
	}
}

