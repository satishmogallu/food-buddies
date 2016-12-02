package com.hpe.ahold.beans;

import java.io.Serializable;

@SuppressWarnings("serial")
public class user implements Serializable {

	private int user_id;
	private String user_name;
	private String first_name;
	private String last_name;
	private String password;
	private String email;
	private String phone_number;
	private String address;
	private String city;
	private String state;
	private String zip;
	private String employee;
	private int store_id;
	private double user_latitude;
	private double user_longitude;
	/**
	 * @return the user_latitude
	 */
	public double getUser_latitude() {
		return user_latitude;
	}

	/**
	 * @param user_latitude the user_latitude to set
	 */
	public void setUser_latitude(double user_latitude) {
		this.user_latitude = user_latitude;
	}

	/**
	 * @return the user_longitude
	 */
	public double getUser_longitude() {
		return user_longitude;
	}

	/**
	 * @param user_longitude the user_longitude to set
	 */
	public void setUser_longitude(double user_longitude) {
		this.user_longitude = user_longitude;
	}

	
	/**
	 * 
	 */
	public user() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	/**
	 * @return the user_id
	 */
	public int getUser_id() {
		return user_id;
	}
	/**
	 * @param user_id the user_id to set
	 */
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	/**
	 * @return the user_name
	 */
	public String getUser_name() {
		return user_name;
	}
	/**
	 * @param user_name the user_name to set
	 */
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	/**
	 * @return the first_name
	 */
	public String getFirst_name() {
		return first_name;
	}
	/**
	 * @param first_name the first_name to set
	 */
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	/**
	 * @return the last_name
	 */
	public String getLast_name() {
		return last_name;
	}
	/**
	 * @param last_name the last_name to set
	 */
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the phone_number
	 */
	public String getPhone_number() {
		return phone_number;
	}
	/**
	 * @param phone_number the phone_number to set
	 */
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * @return the zip
	 */
	public String getZip() {
		return zip;
	}
	/**
	 * @param zip the zip to set
	 */
	public void setZip(String zip) {
		this.zip = zip;
	}
	/**
	 * @return the employee
	 */
	public String getEmployee() {
		return employee;
	}
	/**
	 * @param employee the employee to set
	 */
	public void setEmployee(String employee) {
		this.employee = employee;
	}
	/**
	 * @return the store_id
	 */
	public int getStore_id() {
		return store_id;
	}
	/**
	 * @param store_id the store_id to set
	 */
	public void setStore_id(int store_id) {
		this.store_id = store_id;
	}

	


}
