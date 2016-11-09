package com.letzchaat.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class StudAddress {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentAddressId;

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

	@OneToOne(cascade = CascadeType.ALL)
	private Student st;

	public int getStudentAddressId() {
		return studentAddressId;
	}

	public void setStudentAddressId(int studentAddressId) {
		this.studentAddressId = studentAddressId;
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

	public Student getSt() {
		return st;
	}

	public void setSt(Student st) {
		this.st = st;
	}

	@Override
	public String toString() {
		return "houseNumber=" + houseNumber + ", addressLine1=" + addressLine1 + ", addressLine2=" + addressLine2
				+ ", city=" + city + ", state=" + state + ", country=" + country + ", zipCode=" + zipCode + ".";
	}

}
