package com.hpe.ahold.controler;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.hpe.ahold.beans.user;
import com.hpe.ahold.dao.DataServiceDAOHelper;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");

		user userDeatils = null;
		DataServiceDAOHelper validate = new DataServiceDAOHelper();
		userDeatils = validate.checkUser(uname.trim(), pass.trim());
		
		if (userDeatils != null && userDeatils.getUser_name() != null) {
	        HttpSession session=request.getSession();  
	        
	        session.setAttribute("name",userDeatils.getUser_name());
	        session.setAttribute("UserID",userDeatils.getUser_id());
	        session.setAttribute("FirstName",userDeatils.getFirst_name());
	        session.setAttribute("email",userDeatils.getEmail());
	        session.setAttribute("Phone Number",userDeatils.getPhone_number()); 
	        session.setAttribute("UserLat",userDeatils.getUser_latitude());
	        session.setAttribute("UserLong",userDeatils.getUser_longitude()); 

			RequestDispatcher rs = request.getRequestDispatcher("main.html");
			rs.forward(request, response);
		} else {
			out.println("Username or Password incorrect");
			request.setAttribute("errorMessage", "Invalid username or password");
			RequestDispatcher rs = request.getRequestDispatcher("invalidLogin.html");
			rs.include(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

}
