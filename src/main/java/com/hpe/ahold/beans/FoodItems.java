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
public class FoodItems implements Serializable {
	
	/**
	 * 
	 */
	private int foodId;
	private String foodName;
	private String foodDesc;	
	private int foodQuantiry;
	private String foodType;
	private String price;
	private String bestBeforeDate;
	private String claimStatus;
	private String storeName;
	private String foodImg;
	private String distance;
	private int foodStoreId;


	/**
	 * @return the foodStoreId
	 */
	public int getFoodStoreId() {
		return foodStoreId;
	}

	/**
	 * @param foodStoreId the foodStoreId to set
	 */
	public void setFoodStoreId(int foodStoreId) {
		this.foodStoreId = foodStoreId;
	}

	/**
	 * @return the foodId
	 */
	public int getFoodId() {
		return foodId;
	}

	/**
	 * @param foodId the foodId to set
	 */
	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}

	/**
	 * @return the foodName
	 */
	public String getFoodName() {
		return foodName;
	}

	/**
	 * @param foodName the foodName to set
	 */
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	/**
	 * @return the foodDesc
	 */
	public String getFoodDesc() {
		return foodDesc;
	}

	/**
	 * @param foodDesc the foodDesc to set
	 */
	public void setFoodDesc(String foodDesc) {
		this.foodDesc = foodDesc;
	}

	/**
	 * @return the foodQuantiry
	 */
	public int getFoodQuantiry() {
		return foodQuantiry;
	}

	/**
	 * @param foodQuantiry the foodQuantiry to set
	 */
	public void setFoodQuantiry(int foodQuantiry) {
		this.foodQuantiry = foodQuantiry;
	}

	/**
	 * @return the foodType
	 */
	public String getFoodType() {
		return foodType;
	}

	/**
	 * @param foodType the foodType to set
	 */
	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}

	/**
	 * @return the price
	 */
	public String getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(String price) {
		this.price = price;
	}

	/**
	 * @return the bestBeforeDate
	 */
	public String getBestBeforeDate() {
		return bestBeforeDate;
	}

	/**
	 * @param bestBeforeDate the bestBeforeDate to set
	 */
	public void setBestBeforeDate(String bestBeforeDate) {
		this.bestBeforeDate = bestBeforeDate;
	}

	/**
	 * @return the claimStatus
	 */
	public String getClaimStatus() {
		return claimStatus;
	}

	/**
	 * @param claimStatus the claimStatus to set
	 */
	public void setClaimStatus(String claimStatus) {
		this.claimStatus = claimStatus;
	}

	/**
	 * @return the storeName
	 */
	public String getStoreName() {
		return storeName;
	}

	/**
	 * @param storeName the storeName to set
	 */
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	/**
	 * @return the foodImg
	 */
	public String getFoodImg() {
		return foodImg;
	}

	/**
	 * @param foodImg the foodImg to set
	 */
	public void setFoodImg(String foodImg) {
		this.foodImg = foodImg;
	}




	/**
	 * @return the distance
	 */
	public String getDistance() {
		return distance;
	}

	/**
	 * @param distance the distance to set
	 */
	public void setDistance(String distance) {
		this.distance = distance;
	}

	
	
	
	public FoodItems() {
		// TODO Auto-generated constructor stub
	}
	
	


	

}
