package com.hpe.ahold.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.hpe.ahold.beans.FoodItems;
import com.hpe.ahold.beans.MyCart;
import com.hpe.ahold.beans.StoreDetails;
import com.hpe.ahold.beans.user;
import com.hpe.ahold.constants.MapUtil;
import com.hpe.ahold.dao.DataServiceHelper;

public class DataServiceDAOHelper {
	public user checkUser(String uname, String pass) {
		user userDetails = new user();
		String query = "select * from user where user_name=? and user_password=? ";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			stmt.setString(1, uname);
			stmt.setString(2, pass);
			rs = stmt.executeQuery();
			userDetails = convertUserPojoList(rs);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}
		return userDetails;
	}

	public user getUser(int userId) {
		user userDetails = new user();
		String query = "select * from user where user_id=? ";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			stmt.setInt(1, userId);
			rs = stmt.executeQuery();
			userDetails = convertUserPojoList(rs);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}
		return userDetails;
	}

	private user convertUserPojoList(ResultSet rs) throws SQLException {
		// TODO Auto-generated method stub
		user userDetails = new user();
		while (rs.next()) {
			userDetails.setUser_id(rs.getInt("user_id"));
			userDetails.setUser_name(rs.getString("user_name"));
			userDetails.setUser_latitude(rs.getDouble("user_latitude"));
			userDetails.setUser_longitude(rs.getDouble("user_longitude"));
			userDetails.setFirst_name(rs.getString("user_first_name"));
			userDetails.setEmail(rs.getString("user_email"));
			userDetails.setPhone_number(rs.getString("user_Phone_number"));
		}
		return userDetails;
	}

	public List<FoodItems> getAllFoodItems(int userID) {
		List<FoodItems> foodItems = new ArrayList<FoodItems>();
		String query = "select * from food_items where food_claim_status='NO'";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();
			foodItems = convertFoodItemsPojoList(rs, userID);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}
		return foodItems;
	}

	private List<FoodItems> convertFoodItemsPojoList(ResultSet rs, int userID) throws SQLException {
		// TODO Auto-generated method stub
		List<FoodItems> foodItems = new ArrayList<FoodItems>();
		while (rs.next()) {

			int storeName = rs.getInt("food_store_id");
			StoreDetails storedetail = getStoreDistance(storeName);
			user userdetails = getUser(userID);
			double distance = MapUtil.getGeoDistance(userdetails.getUser_latitude(), storedetail.getStore_latitude(),
					userdetails.getUser_longitude(), storedetail.getStore_longitude());
			String total2 = String.valueOf(distance);
			String dist = total2 + " miles";
			FoodItems food = new FoodItems();
			food.setFoodId(rs.getInt("food_id"));
			food.setFoodName(rs.getString("food_name"));
			food.setFoodDesc(rs.getString("food_desc"));
			food.setFoodQuantiry(rs.getInt("food_quantity"));
			food.setFoodType(rs.getString("food_type"));
			food.setPrice(rs.getString("food_price"));
			food.setBestBeforeDate(rs.getString("food_best_before_date"));
			food.setClaimStatus(rs.getString("food_claim_status"));
			food.setStoreName(rs.getString("food_store_name"));
			food.setFoodStoreId(rs.getInt("food_store_id"));
			food.setDistance(dist);
			foodItems.add(food);
		}
		return foodItems;
	}

	public StoreDetails getStoreDistance(int storeName) {
		StoreDetails storedetail = new StoreDetails();
		String query = "select * from store_details where store_id=?";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			stmt.setInt(1, storeName);
			rs = stmt.executeQuery();
			storedetail = convertFoodItemsPojoList(rs);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}
		return storedetail;
	}

	private StoreDetails convertFoodItemsPojoList(ResultSet rs) throws SQLException {
		// TODO Auto-generated method stub
		StoreDetails storeDel = new StoreDetails();
		while (rs.next()) {

			storeDel.setStore_latitude(rs.getDouble("store_latitude"));
			storeDel.setStore_longitude(rs.getDouble("store_longitude"));
			storeDel.setStore_name(rs.getString("store_name"));

		}
		return storeDel;
	}

	public void addMyCart(int foodId, int UserID) {
		insertMyCart(foodId, UserID);
		String query = "UPDATE food_items SET food_claim_status=? WHERE food_id=?";
		PreparedStatement stmt = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			stmt.setString(1, "YES");
			stmt.setInt(2, foodId);
			stmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
	}

	public void insertMyCart(int foodId, int UserID) {

		String query = "INSERT INTO my_cart";
		String SQL_WHERE_CASE = " VALUES('" + foodId + "','" + UserID + "')";
		try {
			DataServiceHelper.getInstance().executeUpdateQuery(query + SQL_WHERE_CASE);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public FoodItems getFoodDetails(String foodId) {

		FoodItems foodItems = new FoodItems();
		String query = "select * from food_items where food_id=?";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			stmt.setString(1, foodId);
			rs = stmt.executeQuery();
			foodItems = convertFoodItemsList(rs);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}
		return foodItems;

	}

	private FoodItems convertFoodItemsList(ResultSet rs) throws SQLException {
		// TODO Auto-generated method stub
		FoodItems food = new FoodItems();
		while (rs.next()) {
			food.setFoodId(rs.getInt("food_id"));
			food.setFoodName(rs.getString("food_name"));
			food.setFoodDesc(rs.getString("food_desc"));
			food.setFoodQuantiry(rs.getInt("food_quantity"));
			food.setFoodType(rs.getString("food_type"));
			food.setPrice(rs.getString("food_price"));
			food.setBestBeforeDate(rs.getString("food_best_before_date"));
			food.setClaimStatus(rs.getString("food_claim_status"));
			food.setStoreName(rs.getString("food_store_name"));
			food.setFoodStoreId(rs.getInt("food_store_id"));
		}
		return food;
	}

	public List<FoodItems> getAllCartItems(int userID) {
		List<FoodItems> foodItems = new ArrayList<FoodItems>();
		String query = "select * from my_cart where user_id=? ";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			stmt.setInt(1, userID);
			rs = stmt.executeQuery();
			foodItems = convertCartItemsPojoList(rs, userID);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}
		return foodItems;
	}

	private List<FoodItems> convertCartItemsPojoList(ResultSet rs, int userid) throws SQLException {
		// TODO Auto-generated method stub
		List<FoodItems> foodItems = new ArrayList<FoodItems>();
		while (rs.next()) {
			FoodItems foodItem = getFoodItemsForFoodID(rs.getInt("food_id"), userid);
			foodItems.add(foodItem);
		}
		return foodItems;
	}

	public FoodItems getFoodItemsForFoodID(int foodId, int Userid) {
		FoodItems foodItems = new FoodItems();
		String query = "select * from food_items where food_id=? ";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			stmt.setInt(1, foodId);
			rs = stmt.executeQuery();
			foodItems = convertCartItemsPojoList1(rs, Userid);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}
		return foodItems;
	}

	private FoodItems convertCartItemsPojoList1(ResultSet rs, int Userid) throws SQLException {
		// TODO Auto-generated method stub
		FoodItems food = new FoodItems();
		while (rs.next()) {
			int storeName = rs.getInt("food_store_id");
			StoreDetails storedetail = getStoreDistance(storeName);
			user userdetails = getUser(Userid);
			double distance = MapUtil.getGeoDistance(userdetails.getUser_latitude(), storedetail.getStore_latitude(),
					userdetails.getUser_longitude(), storedetail.getStore_longitude());
			String total2 = String.valueOf(distance);
			String dist = total2 + " miles";

			food.setFoodId(rs.getInt("food_id"));
			food.setFoodName(rs.getString("food_name"));
			food.setFoodDesc(rs.getString("food_desc"));
			food.setFoodQuantiry(rs.getInt("food_quantity"));
			food.setFoodType(rs.getString("food_type"));
			food.setPrice(rs.getString("food_price"));
			food.setBestBeforeDate(rs.getString("food_best_before_date"));
			food.setClaimStatus(rs.getString("food_claim_status"));
			food.setStoreName(rs.getString("food_store_name"));
			food.setFoodStoreId(rs.getInt("food_store_id"));
			food.setDistance(dist);

		}
		return food;
	}

	public List<FoodItems> getAllFoodItemsForFoodID(int storeid, int userId) {
		List<FoodItems> foodItems = new ArrayList<FoodItems>();
		String query = "select * from food_items where food_store_id=? ";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = DataServiceHelper.getInstance().getConnection();
			stmt = con.prepareStatement(query);
			stmt.setInt(1, storeid);
			rs = stmt.executeQuery();
			foodItems = convertFoodsPojoList(rs, userId);
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DataServiceHelper.getInstance().closeConnection();
				con.close();
				stmt.close();
				rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}

		}
		return foodItems;
	}

	private List<FoodItems> convertFoodsPojoList(ResultSet rs, int userId) throws SQLException {
		// TODO Auto-generated method stub
		List<FoodItems> foodItems = new ArrayList<FoodItems>();
		while (rs.next()) {
			int storeID = rs.getInt("food_store_id");
			StoreDetails storedetail = getStoreDistance(storeID);
			user userdetails = getUser(userId);
			double distance = MapUtil.getGeoDistance(userdetails.getUser_latitude(), storedetail.getStore_latitude(),
					userdetails.getUser_longitude(), storedetail.getStore_longitude());
			String total2 = String.valueOf(distance);
			String dist = total2 + " miles";
			FoodItems food = new FoodItems();
			food.setFoodId(rs.getInt("food_id"));
			food.setFoodName(rs.getString("food_name"));
			food.setFoodDesc(rs.getString("food_desc"));
			food.setFoodQuantiry(rs.getInt("food_quantity"));
			food.setFoodType(rs.getString("food_type"));
			food.setPrice(rs.getString("food_price"));
			food.setBestBeforeDate(rs.getString("food_best_before_date"));
			food.setClaimStatus(rs.getString("food_claim_status"));
			food.setStoreName(rs.getString("food_store_name"));
			food.setFoodStoreId(rs.getInt("food_store_id"));
			food.setDistance(dist);
			foodItems.add(food);
		}
		return foodItems;
	}
}