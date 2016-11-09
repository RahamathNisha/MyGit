package com.letzchaat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class StudentInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sid;

	@NotEmpty(message = "Name field is mandatory.")
	private String sname;

	@NotEmpty(message = "Username field is mandatory.")
	private String username;

	@NotEmpty(message = "Password field is mandatory.")
	private String password;

	@NotEmpty(message = "DOB field is mandatory.")
	private String dob;

	@NotEmpty(message = "Gender field is mandatory.")
	private String gender;

	@NotEmpty(message = "Phone number field is mandatory.")
	private String number;

	@NotEmpty(message = "Email field is mandatory.")
	private String email;

	@NotEmpty(message = "House Number field is mandatory.")
	private String houseNumber;

	@NotEmpty(message = "Address Line1 field is mandatory.")
	private String addressLine1;

	@NotEmpty(message = "Address Line2 field is mandatory.")
	private String addressLine2;

	@NotEmpty(message = "City field is mandatory.")
	private String city;

	@NotEmpty(message = "State field is mandatory.")
	private String state;

	@NotEmpty(message = "Country field is mandatory.")
	private String country;

	@NotEmpty(message = "Zipcode field is mandatory.")
	private String zipCode;

	@Transient
	private MultipartFile file;

	@Transient
	private String img;

	public StudentInfo() {
		super();
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

}
