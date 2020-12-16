package com.bank.pojo;

public class Customer
{
	int id;
	String firstName ,lastName ,UserName,Password , Address, Phone ;
	
	public Customer() {
		super();
	}

	public Customer(int id, String firstName, String lastName, String userName, String password, String address,
			String phone) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		UserName = userName;
		Password = password;
		Address = address;
		Phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", UserName=" + UserName
				+ ", Password=" + Password + ", Address=" + Address + ", Phone=" + Phone + "]";
	}
	
	
	
	
	
	
}

