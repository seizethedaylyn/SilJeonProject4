package com.example.board;

import java.util.Date;

public class BoardVO {
	private int seq;
	private String name;
	private String gender;
	private String studentId;
	private String phoneNum;
	private Integer age;
	private String birthday;
	private String major;
	private String part;
	private Integer bonus;
	private Integer minus;
	private String particulars;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public Integer getBonus() {
		return bonus;
	}

	public void setBonus(Integer bonus) {
		this.bonus = bonus;
	}

	public Integer getMinus() {
		return minus;
	}

	public void setMinus(Integer minus) {
		this.minus = minus;
	}


	public String getParticulars() {
		return particulars;
	}

	public void setParticulars(String particulars) {
		this.particulars = particulars;
	}
}