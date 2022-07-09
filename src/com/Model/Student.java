package com.Model;

public class Student {

	public Student() {
		// TODO Auto-generated constructor stub
	}

	
	public String Id ;

	public String FirstName	;

	public int Birth;	


	public String Gender	;

	public String Phone;

	public String Address;
	
	public int ClassId;
	
	public Student(String id, String firstName, int birth, String gender, String phone, String address, int classId) {
		super();
		Id = id;
		FirstName = firstName;
		Birth = birth;
		Gender = gender;
		Phone = phone;
		Address = address;
		ClassId = classId;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public int getBirth() {
		return Birth;
	}

	public void setBirth(int birth) {
		Birth = birth;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public int getClassId() {
		return ClassId;
	}

	public void setClassId(int classId) {
		ClassId = classId;
	}
	
}
