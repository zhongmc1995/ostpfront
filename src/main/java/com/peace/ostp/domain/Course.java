package com.peace.ostp.domain;

public class Course {
	private int ID;
	private String name;
	private String desc;
	private int teacherID;
	
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
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public int getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}
	@Override
	public String toString() {
		return "[ ID：" + ID + "   name：" + name + "   desc：" + desc + " ]";
	}
}