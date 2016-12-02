/**
 * 
 */
package com.hpe.ahold.beans;

import java.io.Serializable;

/**
 * @author sangaras
 *
 */
@SuppressWarnings("serial")
public class StoreDetails implements Serializable {


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
	/**
	 * @return the store_name
	 */
	public String getStore_name() {
		return store_name;
	}
	/**
	 * @param store_name the store_name to set
	 */
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	/**
	 * @return the store_address
	 */
	public String getStore_address() {
		return store_address;
	}
	/**
	 * @param store_address the store_address to set
	 */
	public void setStore_address(String store_address) {
		this.store_address = store_address;
	}
	/**
	 * @return the store_city
	 */
	public String getStore_city() {
		return store_city;
	}
	/**
	 * @param store_city the store_city to set
	 */
	public void setStore_city(String store_city) {
		this.store_city = store_city;
	}
	/**
	 * @return the store_state
	 */
	public String getStore_state() {
		return store_state;
	}
	/**
	 * @param store_state the store_state to set
	 */
	public void setStore_state(String store_state) {
		this.store_state = store_state;
	}
	/**
	 * @return the store_zip
	 */
	public String getStore_zip() {
		return store_zip;
	}
	/**
	 * @param store_zip the store_zip to set
	 */
	public void setStore_zip(String store_zip) {
		this.store_zip = store_zip;
	}
	/**
	 * @return the store_phone_number
	 */
	public String getStore_phone_number() {
		return store_phone_number;
	}
	/**
	 * @param store_phone_number the store_phone_number to set
	 */
	public void setStore_phone_number(String store_phone_number) {
		this.store_phone_number = store_phone_number;
	}
	/**
	 * @return the store_latitude
	 */
	public double getStore_latitude() {
		return store_latitude;
	}
	/**
	 * @param store_latitude the store_latitude to set
	 */
	public void setStore_latitude(double store_latitude) {
		this.store_latitude = store_latitude;
	}
	/**
	 * @return the store_longitude
	 */
	public double getStore_longitude() {
		return store_longitude;
	}
	/**
	 * @param store_longitude the store_longitude to set
	 */
	public void setStore_longitude(double store_longitude) {
		this.store_longitude = store_longitude;
	}
	/**
	 * 
	 */
	public StoreDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	private int store_id;
	private String store_name;
	private String store_address;	
	private String store_city;
	private String store_state;
	private String store_zip;
	private String store_phone_number;
	private double store_latitude;
	private double store_longitude;


}
