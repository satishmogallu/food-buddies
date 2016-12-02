package com.hpe.ahold.controler;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

import com.hpe.ahold.beans.FoodItems;
import com.hpe.ahold.dao.DataServiceDAOHelper;

/**
 * Servlet implementation class FoodItemsDisplay
 */
public class FoodItemsDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public FoodItemsDisplay() {
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

		List<FoodItems> foodItems = new ArrayList<FoodItems>();
		DataServiceDAOHelper validate = new DataServiceDAOHelper();
		HttpSession session = request.getSession(true);

		String UserId = String.valueOf(session.getAttribute("UserID"));
		foodItems = validate.getAllFoodItems(Integer.parseInt(UserId));
		request.getSession().setAttribute("foodItemsList", foodItems);

		RequestDispatcher rs = request.getRequestDispatcher("/foodYard.jsp");
		rs.forward(request, response);

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

}
