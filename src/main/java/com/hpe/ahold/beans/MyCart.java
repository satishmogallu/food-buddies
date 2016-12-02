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
public class MyCart implements Serializable {

	/**
	 * 
	 */
	public MyCart() {
		// TODO Auto-generated constructor stub
	}


	private int user_id;
	private int food_Id;

	/**
	 * @return the user_id
	 */
	public int getUser_id() {
		return user_id;
	}

	/**
	 * @param user_id
	 *            the user_id to set
	 */
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	/**
	 * @return the food_Id
	 */
	public int getFood_Id() {
		return food_Id;
	}

	/**
	 * @param food_Id
	 *            the food_Id to set
	 */
	public void setFood_Id(int food_Id) {
		this.food_Id = food_Id;
	}

}
