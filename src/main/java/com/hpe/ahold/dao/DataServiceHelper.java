package com.hpe.ahold.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;



public class DataServiceHelper {
	public static DataServiceHelper dataServiceHelper = null;
	private Connection con = null;
	DataSource dataSource = null;
	InitialContext initialContext = null;
	public static final String DB_URL = "jdbc:mysql://localhost:3306/food-buddy";
	public static final String DRIVER_NAME = "com.mysql.jdbc.Driver";

	/**
	 * This method is used to create an object for the given DAO class name.
	 * 
	 * @param daoClassName
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws PersistenceException
	 */

	public Connection getConnection() throws ClassNotFoundException,
			SQLException {
		Class.forName(DRIVER_NAME);
		con = DriverManager.getConnection(DB_URL, "root", "root");
		return con;
	}

	/**
	 * 
	 * @param jndiDataSourceName
	 * @return
	 * @throws NamingException
	 */

	/**
	 * 
	 * @throws SQLException
	 * @throws Exception
	 */
	public void closeConnection() throws SQLException {
		if (isConnectionOpen()) {
			con.close();
			con = null;
		}
	}

	/**
	 * 
	 * @return
	 */
	public boolean isConnectionOpen() {
		return (con != null);
	}

	/**
	 * 
	 * @return
	 */
	public static DataServiceHelper getInstance() {
		if (dataServiceHelper == null) {
			dataServiceHelper = new DataServiceHelper();
		}
		return dataServiceHelper;
	}
	/**
	 * 
	 * @param query
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public void executeUpdateQuery(String query) throws SQLException,
			ClassNotFoundException {
		Connection con = getConnection();
		Statement stmt = con.createStatement();
		stmt.execute(query);
		closeConnection();
	}

	
}
