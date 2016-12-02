package com.hpe.ahold.controler;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

import com.hpe.ahold.beans.FoodItems;
import com.hpe.ahold.beans.StoreDetails;
import com.hpe.ahold.dao.DataServiceDAOHelper;

/**
 * Servlet implementation class FoodItemsDisplay
 */
public class MapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public MapServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		DataServiceDAOHelper validate = new DataServiceDAOHelper();
		HttpSession session = request.getSession(true);
		String uname = request.getParameter("foodName");

		StoreDetails storedetail = validate.getStoreDistance(Integer.parseInt(uname));
		session.setAttribute("StroeLat", storedetail.getStore_latitude());
		session.setAttribute("StroeLan", storedetail.getStore_longitude());
		session.setAttribute("storeName", storedetail.getStore_name());

		RequestDispatcher rs = request.getRequestDispatcher("/maphome.jsp");
		rs.forward(request, response);

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

}
